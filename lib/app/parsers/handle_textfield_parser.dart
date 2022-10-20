import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/app/modules/onboarding/controllers/onboarding_controller.dart';

class HandleTextFieldParser extends WidgetParser {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    return TextField(
        decoration: InputDecoration(hintText: "@"),
        controller: textEditingController,
        onChanged: (listener as ProfileSetupClickListener).onHandleTextChanged);
  }

  @override
  String get widgetName => "HandleTextField";

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
