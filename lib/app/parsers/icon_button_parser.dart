import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

class IconButtonWidgetParser extends WidgetParser {
  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    return IconButton(onPressed: () {}, icon: const Icon(Icons.forward));
  }

  @override
  String get widgetName => "IconButton";

  @override
  Map<String, dynamic> export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as IconButton;
    return <String, dynamic>{
      "type": "IconButton",
    };
  }

  @override
  Type get widgetType => IconButton;
}
