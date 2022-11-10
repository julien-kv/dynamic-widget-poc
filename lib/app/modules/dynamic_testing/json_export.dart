import 'dart:convert';
import 'dart:developer';

import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';
import 'package:flutter/material.dart';

class CodeEditorPage extends StatefulWidget {
  final String jsonString;

  CodeEditorPage(this.jsonString);

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
          title: Text("Code Editor"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                constraints: BoxConstraints.expand(
                    width: double.infinity, height: double.infinity),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(hintText: 'Enter json string'),
                  maxLines: 1000000,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PreviewPage(jsonString)));
                },
                child: const Text('Export'))
          ],
        ));
    controller.text = jsonString;
    return widget;
  }
}

class PreviewPage extends StatelessWidget {
  String jsonString;

  PreviewPage(this.jsonString);

  late DynamicWidgetJsonExportor? _exportor;
  late String jsonString1;
  @override
  Widget build(BuildContext context) {
    jsonString1 = jsonEncode({
      "type": "Column",
      "crossAxisAlignment": "center",
      "mainAxisAlignment": "start",
      "mainAxisSize": "max",
      "textBaseline": "ideographic",
      "textDirection": "ltr",
      "verticalDirection": "down",
      "children": [
        {
          "type": "Padding",
          "padding": "14.0,12.0,14.0,0.0",
          "child": {
            "type": "SizedBox",
            "width": null,
            "height": 55.0,
            "child": {
              "type": "Row",
              "crossAxisAlignment": "center",
              "mainAxisAlignment": "spaceBetween",
              "mainAxisSize": "max",
              "textBaseline": "ideographic",
              "textDirection": "ltr",
              "verticalDirection": "down",
              "children": []
            }
          }
        },
        {"type": "SizedBox", "width": null, "height": 15.0, "child": null},
        {
          "type": "SizedBox",
          "width": null,
          "height": null,
          "child": {
            "type": "Row",
            "crossAxisAlignment": "center",
            "mainAxisAlignment": "start",
            "mainAxisSize": "max",
            "textBaseline": "ideographic",
            "textDirection": "ltr",
            "verticalDirection": "down",
            "children": [
              {
                "type": "Expanded",
                "flex": 1,
                "child": {
                  "type": "Divider",
                  "height": null,
                  "thickness": 1.0,
                  "indent": null,
                  "endIndent": null,
                  "color": null
                }
              },
              {
                "type": "DecoratedContainer",
                "alignment": "center",
                "decoration": {
                  "color": "FFE6E6E6",
                  "borderRadius": "20,20,20,20,",
                },
                "padding": null,
                "margin": null,
                "constraints": {
                  "minWidth": 130.16666666666666,
                  "maxWidth": 130.16666666666666,
                  "minHeight": 32.65625,
                  "maxHeight": 32.65625,
                },
                "child": {
                  "type": "Text",
                  "data": "Today",
                  "textAlign": "start",
                  "overflow": "fade",
                  "maxLines": null,
                  "semanticsLabel": null,
                  "softWrap": null,
                  "textDirection": "ltr",
                  "style": {
                    "color": "ff676767",
                    "debugLabel": null,
                    "decoration": "none",
                    "fontSize": 14.0,
                    "fontFamily": "Manrope",
                    "fontStyle": "normal",
                    "fontWeight": "w600"
                  },
                  "textScaleFactor": null
                }
              },
              {
                "type": "Expanded",
                "flex": 1,
                "child": {
                  "type": "Divider",
                  "height": null,
                  "thickness": 1.0,
                  "indent": null,
                  "endIndent": null,
                  "color": null
                }
              }
            ]
          }
        },
        {"type": "SizedBox", "width": null, "height": 15.0, "child": null},
        {
          "type": "Column",
          "crossAxisAlignment": "center",
          "mainAxisAlignment": "start",
          "mainAxisSize": "max",
          "textBaseline": "ideographic",
          "textDirection": null,
          "verticalDirection": "down",
          "children": [
            {"type": "SizedBox", "width": null, "height": 15.0, "child": null},
            {
              "type": "DecoratedContainer",
              "alignment": null,
              "padding": "15.0,12.0,0.0,12.0",
              "color": null,
              "margin": "0.0,0.0,0.0,15.0",
              "constraints": {
                "minWidth": 347.0,
                "maxWidth": 347.0,
                "minHeight": 0.0,
                "maxHeight": 9999999999.0
              },
              "decoration": {
                "color": "ffffffff",
                "borderWidth": 1.0,
                "borderColor": "ffffffff",
                "boxShadow": [
                  {
                    "color": "FFE6E6E6",
                    "offset": null,
                    "blurRadius": 4.0,
                    "spreadRadius": 0.5,
                    "blurStyle": null,
                  },
                ],
                "borderRadius": "10,10,10,10",
              },
              "child": {
                "type": "Row",
                "crossAxisAlignment": "center",
                "mainAxisAlignment": "start",
                "mainAxisSize": "max",
                "textBaseline": "ideographic",
                "textDirection": null,
                "verticalDirection": "down",
                "children": [
                  {
                    "type": "Container",
                    "alignment": null,
                    "padding": "2.0,2.0,2.0,2.0",
                    "margin": null,
                    "constraints": {
                      "minWidth": 51.0,
                      "maxWidth": 51.0,
                      "minHeight": 51.0,
                      "maxHeight": 51.0
                    },
                    "child": {
                      "type": "OptimizedCacheImage",
                      "imageUrl": "https://picsum.photos/200/300?a",
                      "memCacheHeight": "800",
                      "memCacheWidth": "800",
                      "maxHeightDiskCache": "800",
                      "maxWidthDiskCache": "800",
                      "width": 44.0,
                      "height": 44.0,
                    }
                  },
                  {
                    "type": "SizedBox",
                    "width": 20.0,
                    "height": null,
                    "child": null
                  },
                  {
                    "type": "Text",
                    "data": "employeeName",
                    "textAlign": "start",
                    "overflow": null,
                    "maxLines": null,
                    "semanticsLabel": null,
                    "softWrap": null,
                    "textDirection": "ltr",
                    "style": {
                      "color": "ff000000",
                      "debugLabel": null,
                      "decoration": "none",
                      "fontSize": 14.0,
                      "fontFamily": "Manrope",
                      "fontStyle": "normal",
                      "fontWeight": "w500"
                    },
                    "textScaleFactor": null
                  }
                ]
              }
            }
          ]
        }
      ]
    });
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Preview"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<Widget?>(
              future: _buildWidget(context),
              builder: (BuildContext context, AsyncSnapshot<Widget?> snapshot) {
                if (snapshot.hasError) {
                  print(snapshot.error);
                }
                return snapshot.hasData
                    ? _exportor = DynamicWidgetJsonExportor(
                        child: snapshot.data,
                      )
                    : Text("Loading...");
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              var exportJsonString = _exportor?.exportJsonString(context);
              if (exportJsonString != null)
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CodeEditorPage(exportJsonString)));
            },
            child: Text("export json code"),
          )
        ],
      ),
    );
  }

  Future<Widget?> _buildWidget(BuildContext context) async {
    return DynamicWidgetBuilder.build(
        jsonString1, context, new DefaultClickListener());
  }
}

class DefaultClickListener implements ClickListener {
  @override
  void onClicked(String? event) {
    print("Receive click event: " + (event == null ? "" : event));
  }
}
