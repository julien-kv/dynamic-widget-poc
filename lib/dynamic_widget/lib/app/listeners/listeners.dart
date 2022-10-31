import 'package:dynamic_widget/dynamic_widget.dart';

abstract class TextFieldClickListener extends ClickListener {
  void onNameTextChanged(String text);
  void onHandleTextChanged(String text);
}

abstract class AbstractHomeCLickListener extends ClickListener {
  Future<String> getMoreItems(int limit, int offset);
}
