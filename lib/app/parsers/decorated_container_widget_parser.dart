import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:flutter/widgets.dart';

class DecoratedContainerWidgetParser extends WidgetParser {
  // BorderDecoration
  // BoxDecoration parseBoxDecoration(Map<String, dynamic>? map) {
  //   Color? color = parseHexColor(map?['color']);
  //   BorderRadius? borderRadius = BorderRadius.circular(map?['borderRadius']);
  //   double? borderWidth = map?['borderWidth'];
  //   return BoxDecoration(
  //     borderRadius: borderRadius,
  //     color: color,
  //     border: Border.all(
  //       width: borderWidth ?? 1,
  //     ),
  //   );
  // }
  //Todo  need to implement parser for BoxDecoration
  BoxDecoration parseBoxDecoration(Map<String, dynamic>? map) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(width: .2),
    );
  }

  //BorderDecoration
  // Map<String, dynamic>? exportBorderSide(
  //     BoxDecoration? boxDecoration, BuildContext? buildContext) {
  //   if (boxDecoration == null) {
  //     return null;
  //   }
  //   return <String, dynamic>{
  //     "color": boxDecoration.color?.value.toRadixString(16),
  //     "borderRadius":
  //         boxDecoration.borderRadius?.resolve(Directionality.of(buildContext!)),
  //     "borderWidth": null,
  //   };
  // }

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    Alignment? alignment = parseAlignment(map['alignment']);
    Color? color =
        map.containsKey("decoration") ? null : parseHexColor(map['color']);
    BoxConstraints constraints = parseBoxConstraints(map['constraints']);
    BoxDecoration? boxDecoration = map.containsKey('decoration')
        ? parseBoxDecoration(map['decoration'])
        : null;
    EdgeInsetsGeometry? margin = parseEdgeInsetsGeometry(map['margin']);
    EdgeInsetsGeometry? padding = parseEdgeInsetsGeometry(map['padding']);
    Map<String, dynamic>? childMap = map['child'];
    Widget? child = childMap == null
        ? null
        : DynamicWidgetBuilder.buildFromMap(childMap, buildContext, listener);

    String? clickEvent =
        map.containsKey("click_event") ? map['click_event'] : null;

    var containerWidget = Container(
      alignment: alignment,
      padding: padding,
      color: boxDecoration != null ? null : color,
      decoration: boxDecoration,
      margin: margin,
      width: map['width']?.toDouble(),
      height: map['height']?.toDouble(),
      constraints: constraints,
      child: child,
    );

    if (listener != null && clickEvent != null) {
      return GestureDetector(
        onTap: () {
          listener.onClicked(clickEvent);
        },
        child: containerWidget,
      );
    } else {
      return containerWidget;
    }
  }

  @override
  String get widgetName => "DecoratedContainer";

  @override
  Map<String, dynamic> export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as Container;
    var padding = realWidget.padding as EdgeInsets?;
    var margin = realWidget.margin as EdgeInsets?;
    var constraints = realWidget.constraints;
    return <String, dynamic>{
      "type": widgetName,
      "alignment": realWidget.alignment != null
          ? exportAlignment(realWidget.alignment as Alignment?)
          : null,
      "padding": padding != null
          ? "${padding.left},${padding.top},${padding.right},${padding.bottom}"
          : null,
      "color": realWidget.color != null
          ? realWidget.color!.value.toRadixString(16)
          : null,
      "margin": margin != null
          ? "${margin.left},${margin.top},${margin.right},${margin.bottom}"
          : null,
      "constraints":
          constraints != null ? exportConstraints(constraints) : null,
      "child": DynamicWidgetBuilder.export(realWidget.child, buildContext)
    };
  }

  @override
  Type get widgetType => Container;
}
