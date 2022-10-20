import 'package:flutter/material.dart';

import 'package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart';

import 'code_editor_page.dart';

class JSONExporter extends StatefulWidget {
  @override
  _JSONExporterState createState() => _JSONExporterState();
}

class _JSONExporterState extends State<JSONExporter> {
  GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("export example"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DynamicWidgetJsonExportor(
            key: key,
            child: Expanded(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      child: Image.asset(
                        "assets/keyvalue_icon.png",
                        width: 194,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 45,
                      ),
                      child: TextButton(
                        onPressed: null,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 0.2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/keyvalue_icon.png",
                                  height: 24,
                                  width: 24,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    "Continue with Google",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 45,
                      ),
                      child: TextButton(
                        onPressed: null,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 0.2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/keyvalue_icon.png",
                                  height: 24,
                                  width: 24,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    "Continue with Google",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Please use your work email to login",
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Powered by",
                          ),
                          Image.asset(
                            "assets/keyvalue_icon.png",
                            height: 29,
                            width: 29,
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
          Container(
            child: ElevatedButton(
              child: const Text("Export"),
              onPressed: () {
                var exportor = key.currentWidget as DynamicWidgetJsonExportor;
                var exportJsonString = exportor.exportJsonString();
                print(exportJsonString);
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("json string was exported to editor page.")));
                Future.delayed(const Duration(seconds: 1), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CodeEditorPage(exportJsonString)));
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
