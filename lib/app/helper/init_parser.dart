import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:onboarding/app/parsers/handle_textfield_parser.dart';
import 'package:onboarding/app/parsers/name_textfield_parser.dart';
import 'package:onboarding/app/parsers/profile_setup_container_parser.dart';

import '../parsers/custom_paint_widget_parser.dart';
import '../parsers/decorated_container_widget_parser.dart';
import '../parsers/icon_button_parser.dart';
import '../parsers/spacer_widget_parser.dart';

class InitParser {
  InitParser() {
    DynamicWidgetBuilder.addParser(SpacerWidgetParser());
    DynamicWidgetBuilder.addParser(DecoratedContainerWidgetParser());
    DynamicWidgetBuilder.addParser(NameTextFieldParser());
    DynamicWidgetBuilder.addParser(HandleTextFieldParser());
    DynamicWidgetBuilder.addParser(ProfileSetupContainerParser());
    DynamicWidgetBuilder.addParser(CustomPaintWidgetParser());
    DynamicWidgetBuilder.addParser(IconButtonWidgetParser());
  }
}
