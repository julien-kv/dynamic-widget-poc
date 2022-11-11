import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DecoratedContainerWidgetParser extends WidgetParser {
//  BoxDecoration
  BoxDecoration parseBoxDecoration(Map<String, dynamic> map) {
    Color? color = parseHexColor(map['color']);
    final radius = map.containsKey('borderRadius')
        ? map['borderRadius'].toString().split(",")
        : null;
    BorderRadius? borderRadius;
    Border? borderWidth = map.containsKey('borderWidth')
        ? Border.all(
            color: map.containsKey('borderColor')
                ? parseHexColor(map['borderColor']) ?? Colors.black
                : Colors.black,
            width: map['borderWidth'],
          )
        : null;
    if (radius != null) {
      double? topLeft = double.parse(radius[0]);
      double? topRight = double.parse(radius[1]);
      double? bottomLeft = double.parse(radius[2]);
      double? bottomRight = double.parse(radius[3]);

      borderRadius = BorderRadius.only(
          topLeft: Radius.circular(topLeft),
          topRight: Radius.circular(topRight),
          bottomLeft: Radius.circular(bottomLeft),
          bottomRight: Radius.circular(bottomRight));
    }

    List<BoxShadow>? boxShadow =
        map.containsKey("boxShadow") ? parseBoxShadow(map["boxShadow"]) : null;

    return BoxDecoration(
      borderRadius: borderRadius,
      color: color,
      border: borderWidth,
      boxShadow: boxShadow,
    );
  }

  // BoxDecoration
  Map<String, dynamic>? exportBoxDecoration(
      BoxDecoration? boxDecoration, BuildContext? buildContext) {
    if (boxDecoration == null) {
      return null;
    }
    var borderRadius = boxDecoration.borderRadius!.resolve(
      Directionality.of(buildContext!),
    );
    return <String, dynamic>{
      "color": boxDecoration.color?.value.toRadixString(16),
      "borderRadius":
          "${borderRadius.topLeft.x},${borderRadius.topRight.x},${borderRadius.bottomLeft.x},${borderRadius.bottomRight.x}",
      "borderWidth": boxDecoration.border?.top.width,
      "borderColor": boxDecoration..border?.top.color,
      "boxShadow": boxDecoration.boxShadow != null
          ? exportBoxShadow(boxDecoration.boxShadow)
          : null,
    };
  }

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    Alignment? alignment = parseAlignment(map['alignment']);
    Color? color =
        map.containsKey("decoration") ? null : parseHexColor(map['color']);
    BoxConstraints constraints =
        parseBoxConstraints(map['constraints'], buildContext);
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
      "decoration":
          exportBoxDecoration(widget.decoration as BoxDecoration, buildContext),
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
      "constraints": constraints != null
          ? exportConstraints(constraints, buildContext)
          : null,
      "child": DynamicWidgetBuilder.export(realWidget.child, buildContext)
    };
  }

  @override
  Type get widgetType => Container;
}

List<BoxShadow> parseBoxShadow(List<dynamic> map) {
  List<BoxShadow> boxShadows = [];

  for (var element in map) {
    boxShadows.add(
      BoxShadow(
        color: element.containsKey("color")
            ? parseHexColor(element['color']) ?? Colors.black
            : Colors.black,
        offset: element.containsKey("offset")
            ? element["offset"] ?? Offset.zero
            : Offset.zero,
        blurRadius: element.containsKey("blurRadius")
            ? element["blurRadius"] ?? 0.0
            : 0.0,
        spreadRadius: element.containsKey("spreadRadius")
            ? element["spreadRadius"] ?? 0.0
            : 0.0,
        blurStyle: element.containsKey("blurStyle")
            ? element["blurStyle"] ?? BlurStyle.normal
            : BlurStyle.normal,
      ),
    );
  }
  return boxShadows;
}

exportBoxShadow(List<BoxShadow>? boxShadow) {
  List<Map<String, dynamic>> exportboxShadow = [];

  boxShadow?.forEach((element) {
    exportboxShadow.add({
      "color": element.color,
      "offset": element.offset,
      "blurRadius": element.blurRadius,
      "spreadRadius": element.spreadRadius,
      "blurStyle": element.blurStyle,
    });
  });
}
