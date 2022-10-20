import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

import '../modules/home/controllers/home_controller.dart';

class TextFieldParser extends WidgetParser {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    return TextField(
      decoration: InputDecoration(hintText: "Enter Password"),
      controller: textEditingController,
      onChanged: (text) {
        (listener as DefaultClickListener).onTextChanged(textEditingController);
      },
    );
  }

  @override
  String get widgetName => "TextField";

  @override
  Map<String, dynamic> export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as Container;
    return <String, dynamic>{
      "type": widgetName,
    };
  }

  @override
  Type get widgetType => TextField;
}
