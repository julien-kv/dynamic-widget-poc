import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:onboarding/app/parsers/textfield_parser.dart';

import '../parsers/decorated_container_widget_parser.dart';
import '../parsers/spacer_widget_parser.dart';

class InitParser {
  InitParser() {
    DynamicWidgetBuilder.addParser(SpacerWidgetParser());
    DynamicWidgetBuilder.addParser(DecoratedContainerWidgetParser());
    DynamicWidgetBuilder.addParser(TextFieldParser());
  }
}
