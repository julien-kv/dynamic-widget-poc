import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_painter.dart';

class CustomPaintWidgetParser extends WidgetParser {
  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    Map<String, dynamic>? childMap = map['child'];
    Widget? child = childMap == null
        ? null
        : DynamicWidgetBuilder.buildFromMap(childMap, buildContext, listener);
    return CustomPaint(
      painter: OnBoardingCardPainter(
        shadowColor: Colors.grey,
        contentFillColor: Colors.white,
      ),
      child: child,
    );
  }

  @override
  String get widgetName => "CustomPaint";

  @override
  Map<String, dynamic> export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as CustomPaint;
    return <String, dynamic>{
      "type": "CustomPaint",
      "child": DynamicWidgetBuilder.export(realWidget.child, buildContext)
    };
  }

  @override
  Type get widgetType => CustomPaint;
}
