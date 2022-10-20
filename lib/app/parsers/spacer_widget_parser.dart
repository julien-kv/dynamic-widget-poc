import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/widgets.dart';

class SpacerWidgetParser extends WidgetParser {
  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    return const Spacer();
  }

  @override
  String get widgetName => "Spacer";

  @override
  Map<String, dynamic> export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as Spacer;
    return <String, dynamic>{
      "type": "Spacer",
    };
  }

  @override
  Type get widgetType => Spacer;
}
