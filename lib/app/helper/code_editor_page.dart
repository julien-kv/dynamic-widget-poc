import 'package:flutter/material.dart';

class CodeEditorPage extends StatefulWidget {
  final String jsonString;

  const CodeEditorPage(this.jsonString);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CodeEditorPageState(jsonString);
  }
}

class _CodeEditorPageState extends State<CodeEditorPage> {
  String jsonString;
  TextEditingController controller = TextEditingController();

  _CodeEditorPageState(this.jsonString);

  @override
  Widget build(BuildContext context) {
    var widget = Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text("Code Editor"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                constraints: const BoxConstraints.expand(
                    width: double.infinity, height: double.infinity),
                child: TextField(
                  controller: controller,
                  decoration:
                      const InputDecoration(hintText: 'Enter json string'),
                  maxLines: 1000000,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ));
    controller.text = jsonString;
    return widget;
  }
}
