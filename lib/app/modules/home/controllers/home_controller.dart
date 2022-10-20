import 'dart:async';
import 'dart:convert';

import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final finalJson = {}.obs;
  final count = 0.obs;
  final isLoading = false.obs;

  @override
  void onInit() async {
    super.onInit();
    await onLoadDynamicWidget();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  Future<void> onLoadDynamicWidget() async {
    isLoading.value = true;
    await Future.delayed(
        Duration(
          milliseconds: 500,
        ), () {
      finalJson.value = {
        "type": "Column",
        "crossAxisAlignment": "center",
        "mainAxisAlignment": "center",
        "mainAxisSize": "max",
        "textBaseline": "ideographic",
        "textDirection": null,
        "verticalDirection": "down",
        "children": [
          {
            "type": "SizedBox",
            "width": null,
            "height": null,
            "child": {
              "type": "AssetImage",
              "name": "assets/keyvalue_icon.png",
              "semanticLabel": null,
              "excludeFromSemantics": false,
              "width": 194.0,
              "height": null,
              "color": null,
              "colorBlendMode": null,
              "fit": null,
              "alignment": "center",
              "repeat": "noRepeat",
              "centerSlice": null,
              "matchTextDirection": false,
              "gaplessPlayback": false,
              "filterQuality": "low"
            }
          },
          {"type": "SizedBox", "width": null, "height": 10.0, "child": null},
          {
            "type": "DecoratedContainer",
            "decoration": null,
            "alignment": null,
            "padding": null,
            "color": null,
            "margin": "45.0,0.0,45.0,0.0",
            "constraints": null,
            "child": {
              "type": "TextButton",
              "click_event": "gotogoogle",
              "foregroundColor": null,
              "backgroundColor": null,
              "overlayColor": null,
              "shadowColor": null,
              "elevation": null,
              "padding": null,
              "textStyle": null,
              "child": {
                "type": "Container",
                "alignment": null,
                "padding": null,
                "color": null,
                "margin": null,
                "constraints": {
                  "minWidth": 0.0,
                  "maxWidth": 9999999999.0,
                  "minHeight": 50.0,
                  "maxHeight": 50.0
                },
                "child": {
                  "type": "Padding",
                  "padding": "30.0,0.0,30.0,0.0",
                  "child": {
                    "type": "Row",
                    "crossAxisAlignment": "center",
                    "mainAxisAlignment": "center",
                    "mainAxisSize": "max",
                    "textBaseline": "ideographic",
                    "textDirection": null,
                    "verticalDirection": "down",
                    "children": [
                      {
                        "type": "AssetImage",
                        "name": "assets/google_logo.png",
                        "semanticLabel": null,
                        "excludeFromSemantics": false,
                        "width": 24.0,
                        "height": 24.0,
                        "color": null,
                        "colorBlendMode": null,
                        "fit": null,
                        "alignment": "center",
                        "repeat": "noRepeat",
                        "centerSlice": null,
                        "matchTextDirection": false,
                        "gaplessPlayback": false,
                        "filterQuality": "low"
                      },
                      {
                        "type": "Padding",
                        "padding": "10.0,0.0,0.0,0.0",
                        "child": {
                          "type": "Text",
                          "data": "Continue with Google",
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
                            "fontSize": 16.0,
                            "fontFamily": null,
                            "fontStyle": "normal",
                            "fontWeight": "w600"
                          },
                          "textScaleFactor": null
                        }
                      }
                    ]
                  }
                }
              }
            }
          },
          {"type": "SizedBox", "width": null, "height": 22.0, "child": null},
          {
            "type": "DecoratedContainer",
            "decoration": null,
            "alignment": null,
            "padding": null,
            "color": null,
            "margin": "45.0,0.0,45.0,0.0",
            "constraints": null,
            "child": {
              "type": "TextButton",
              "click_event": "gotoinstagram",
              "foregroundColor": null,
              "backgroundColor": null,
              "overlayColor": null,
              "shadowColor": null,
              "elevation": null,
              "padding": null,
              "textStyle": null,
              "child": {
                "type": "Container",
                "alignment": null,
                "padding": null,
                "color": null,
                "margin": null,
                "constraints": {
                  "minWidth": 0.0,
                  "maxWidth": 9999999999.0,
                  "minHeight": 50.0,
                  "maxHeight": 50.0
                },
                "child": {
                  "type": "Padding",
                  "padding": "30.0,0.0,30.0,0.0",
                  "child": {
                    "type": "Row",
                    "crossAxisAlignment": "center",
                    "mainAxisAlignment": "center",
                    "mainAxisSize": "max",
                    "textBaseline": "ideographic",
                    "textDirection": null,
                    "verticalDirection": "down",
                    "children": [
                      {
                        "type": "AssetImage",
                        "name": "assets/apple_logo.png",
                        "semanticLabel": null,
                        "excludeFromSemantics": false,
                        "width": 24.0,
                        "height": 24.0,
                        "color": null,
                        "colorBlendMode": null,
                        "fit": null,
                        "alignment": "center",
                        "repeat": "noRepeat",
                        "centerSlice": null,
                        "matchTextDirection": false,
                        "gaplessPlayback": false,
                        "filterQuality": "low"
                      },
                      {
                        "type": "Padding",
                        "padding": "10.0,0.0,0.0,0.0",
                        "child": {
                          "type": "Text",
                          "data": "Continue with Apple",
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
                            "fontSize": 16.0,
                            "fontFamily": null,
                            "fontStyle": "normal",
                            "fontWeight": "w600"
                          },
                          "textScaleFactor": null
                        }
                      }
                    ]
                  }
                }
              }
            }
          },
          {"type": "SizedBox", "width": null, "height": 30.0, "child": null},
          {
            "type": "Text",
            "data": "Please use your work email to login",
            "textAlign": "start",
            "overflow": null,
            "maxLines": null,
            "semanticsLabel": null,
            "softWrap": null,
            "textDirection": "ltr",
            "style": null,
            "textScaleFactor": null
          },
          {"type": "Spacer"},
          {
            "type": "Padding",
            "padding": "0.0,0.0,0.0,20.0",
            "child": {
              "type": "Row",
              "crossAxisAlignment": "center",
              "mainAxisAlignment": "center",
              "mainAxisSize": "max",
              "textBaseline": "ideographic",
              "textDirection": null,
              "verticalDirection": "down",
              "children": [
                {
                  "type": "Text",
                  "data": "Powered by",
                  "textAlign": "start",
                  "overflow": null,
                  "maxLines": null,
                  "semanticsLabel": null,
                  "softWrap": null,
                  "textDirection": "ltr",
                  "style": null,
                  "textScaleFactor": null
                },
                {
                  "type": "AssetImage",
                  "name": "assets/keyvalue_icon.png",
                  "semanticLabel": null,
                  "excludeFromSemantics": false,
                  "width": 29.0,
                  "height": 29.0,
                  "color": null,
                  "colorBlendMode": null,
                  "fit": null,
                  "alignment": "center",
                  "repeat": "noRepeat",
                  "centerSlice": null,
                  "matchTextDirection": false,
                  "gaplessPlayback": false,
                  "filterQuality": "low"
                }
              ]
            }
          }
        ]
      };
      isLoading.value = false;
    });
  }

  Future<void> changeJson() async {
    isLoading.value = true;
    finalJson.value = {
      "type": "Column",
      "crossAxisAlignment": "center",
      "mainAxisAlignment": "center",
      "mainAxisSize": "max",
      "textBaseline": "ideographic",
      "textDirection": null,
      "verticalDirection": "down",
      "children": [
        {
          "type": "SizedBox",
          "width": null,
          "height": null,
          "child": {
            "type": "AssetImage",
            "name": "assets/keyvalue_icon.png",
            "semanticLabel": null,
            "excludeFromSemantics": false,
            "width": 194.0,
            "height": null,
            "color": null,
            "colorBlendMode": null,
            "fit": null,
            "alignment": "center",
            "repeat": "noRepeat",
            "centerSlice": null,
            "matchTextDirection": false,
            "gaplessPlayback": false,
            "filterQuality": "low"
          }
        },
        {"type": "SizedBox", "width": null, "height": 10.0, "child": null},
      ]
    };
    isLoading.value = false;
  }

  Widget buildWidget(BuildContext context) {
    return DynamicWidgetBuilder.build(
            jsonEncode(finalJson), context, LoginClickListener(context)) ??
        SizedBox();
  }
}

class LoginClickListener extends ClickListener {
  final BuildContext context;
  LoginClickListener(this.context);

  @override
  void onClicked(String? event) async {
    print("Receive click event: ${event ?? ""}");
    switch (event) {
      case "gotogoogle":
        Get.toNamed(Routes.ONBOARDING);
    }
  }
}
