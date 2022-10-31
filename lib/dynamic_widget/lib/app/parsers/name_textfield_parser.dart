import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

import '../listeners/listeners.dart';

class NameTextFieldParser extends WidgetParser {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    //todo: need to implement generic parser
    return TextField(
        decoration: InputDecoration(hintText: "John Doe"),
        controller: textEditingController,
        onChanged: (text) {
          if (listener is TextFieldClickListener)
            listener.onNameTextChanged(text);
        });
  }

  @override
  String get widgetName => "NameTextField";

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
