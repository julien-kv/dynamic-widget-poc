import 'dart:convert';

import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';

class OnboardingController extends GetxController {
  final isLoading = false.obs;
  final finalJson = {}.obs;
  final count = 0.obs;
  @override
  void onInit() async {
    super.onInit();
    loadPage();
  }

  Future<void> loadPage() async {
    isLoading.value = true;
    Future.delayed(
        Duration(
          seconds: 1,
        ), () {
      finalJson.value = {
        "type": "Stack",
        "alignment": "bottomCenter",
        "textDirection": "ltr",
        "fit": "loose",
        "clipBehavior": "hardEdge",
        "children": [
          {
            "type": "Container",
            "alignment": null,
            "padding": null,
            "color": null,
            "margin": "0.0,178.92,0.0,0.0",
            "constraints": null,
            "child": {
              "type": "DecoratedContainer",
              "alignment": "center",
              "padding": null,
              "color": null,
              "margin": "20.0,0.0,20.0,90.0",
              "constraints": null,
              "child": {
                "type": "Container",
                "alignment": null,
                "padding": "0.0,20.0,0.0,0.0",
                "color": null,
                "margin": null,
                "constraints": {
                  "minWidth": 302.61,
                  "maxWidth": 302.61,
                  "minHeight": 0.0,
                  "maxHeight": 9999999999.0
                },
                "child": {
                  "type": "SingleChildScrollView",
                  "scrollDirection": "vertical",
                  "reverse": false,
                  "padding": "0,0,0,0",
                  "child": {
                    "type": "Column",
                    "crossAxisAlignment": "center",
                    "mainAxisAlignment": "start",
                    "mainAxisSize": "max",
                    "textBaseline": "ideographic",
                    "textDirection": null,
                    "verticalDirection": "down",
                    "children": [
                      {
                        "type": "Text",
                        "data": "Help us put a name to this account",
                        "textAlign": "center",
                        "overflow": null,
                        "maxLines": null,
                        "semanticsLabel": null,
                        "softWrap": null,
                        "textDirection": "ltr",
                        "style": {
                          "color": "ff424242",
                          "debugLabel": null,
                          "decoration": "none",
                          "fontSize": 16.0,
                          "fontFamily": null,
                          "fontStyle": "normal",
                          "fontWeight": "w600"
                        },
                        "textScaleFactor": null
                      },
                      {
                        "type": "SizedBox",
                        "width": null,
                        "height": 14.0,
                        "child": null
                      },
                      {
                        "type": "Text",
                        "data":
                            "Your @handle is unique. You can always change it later",
                        "textAlign": "center",
                        "overflow": null,
                        "maxLines": null,
                        "semanticsLabel": null,
                        "softWrap": null,
                        "textDirection": "ltr",
                        "style": {
                          "color": "ff424242",
                          "debugLabel": null,
                          "decoration": "none",
                          "fontSize": 14.0,
                          "fontFamily": null,
                          "fontStyle": "normal",
                          "fontWeight": "normal"
                        },
                        "textScaleFactor": null
                      },
                      {
                        "type": "SizedBox",
                        "width": null,
                        "height": 28.0,
                        "child": null
                      },
                      {
                        "type": "Column",
                        "crossAxisAlignment": "start",
                        "mainAxisAlignment": "start",
                        "mainAxisSize": "max",
                        "textBaseline": "ideographic",
                        "textDirection": null,
                        "verticalDirection": "down",
                        "children": [
                          null,
                          {
                            "type": "SizedBox",
                            "width": null,
                            "height": 7.0,
                            "child": null
                          },
                          {
                            "type": "SizedBox",
                            "width": null,
                            "height": 24.0,
                            "child": null
                          },
                          null,
                          {
                            "type": "SizedBox",
                            "width": null,
                            "height": 7.0,
                            "child": null
                          }
                        ]
                      }
                    ]
                  }
                }
              }
            }
          },
          {
            "type": "Align",
            "alignment": "topCenter",
            "widthFactor": null,
            "heightFactor": null,
            "child": {
              "type": "AssetImage",
              "name": "assets/page1_image.png",
              "semanticLabel": null,
              "excludeFromSemantics": false,
              "width": null,
              "height": 204.48,
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
          {
            "type": "Align",
            "alignment": "bottomCenter",
            "widthFactor": null,
            "heightFactor": null,
            "child": {
              "type": "Container",
              "alignment": null,
              "padding": null,
              "color": null,
              "margin": null,
              "constraints": {
                "minWidth": 60.0,
                "maxWidth": 60.0,
                "minHeight": 60.0,
                "maxHeight": 60.0
              },
              "child": null
            }
          }
        ]
      };
      isLoading.value = false;
    });
  }

  Widget buildWidget(BuildContext context) {
    return DynamicWidgetBuilder.build(
            jsonEncode(finalJson), context, DefaultClickListener(context)) ??
        SizedBox();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
