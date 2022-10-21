import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/app/modules/onboarding/controllers/onboarding_controller.dart';

import '../modules/home/controllers/home_controller.dart';

class NameTextFieldParser extends WidgetParser {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    return TextField(
        decoration: InputDecoration(hintText: "John Doe"),
        controller: textEditingController,
        onChanged: (listener as ProfileSetupClickListener).onNameTextChanged);
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
