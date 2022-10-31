import 'dart:convert';

import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/app/routes/app_pages.dart';

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
            "margin": "20.0,178.92,20.0,90.0",
            "constraints": null,
            "child": {
              "type": "CustomPaint",
              "child": {
                "type": "ProfileSetupContainer",
                "alignment": "center",
                "decoration": null,
                "padding": null,
                "color": "#ffffff",
                "margin": "20.0,0.0,20.0,10",
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
                            {
                              "type": "Text",
                              "data": "Name",
                              "textAlign": "start",
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
                              "type": "NameTextField",
                            },
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
                            {
                              "type": "Text",
                              "data": "Handle",
                              "textAlign": "start",
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
                              "type": "HandleTextField",
                            },
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
              "type": "ElevatedButton",

              /// For [click_event] we need to have a standard
              ///  click_event : '/onboarding-step[pageNo]' for pages
              ///  click_event : '' for final page
              "click_event": "/onboarding-step2",
              "child": {
                "type": "Text",
                "data": "NextPage",
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
            }
          },
        ]
      };
      isLoading.value = false;
    });
  }

  Future<void> loadPageByJsonChange() async {
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
                        "data": "Title For OnBoarding",
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
                        "data": "Next Page of OnBoarding",
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
                          {
                            "type": "TextField",
                          },
                          {
                            "type": "SizedBox",
                            "width": null,
                            "height": 7.0,
                            "child": null
                          },
                          {
                            "type": "ElevatedButton",

                            /// For [click_event] we need to have a standard
                            ///  click_event : '/onboarding-step[pageNo]' for pages
                            ///  click_event : '' for final page
                            "click_event": "",
                            "child": {
                              "type": "Text",
                              "data": "NextPage",
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
              "name": "assets/page2_image.png",
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

  @override
  void onClose() {}
  void increment() => count.value++;
  Widget buildWidget(BuildContext context) {
    return DynamicWidgetBuilder.build(
            jsonEncode(finalJson), context, OnBoardingSetupClickListener()) ??
        SizedBox();
  }
}

class OnBoardingSetupClickListener implements TextFieldClickListener {
  final onboardingController = Get.find<OnboardingController>();

  @override
  void onClicked(String? event) async {
    print("Receive click event: ${event ?? ""}");

    if (event != null && event.isNotEmpty) {
      // API calls for next json is Triggered.
      onboardingController.loadPageByJsonChange();
    } else {
      // Back to Main APP routes
      Get.offAllNamed(Routes.HOME);
    }
  }

  @override
  void onNameTextChanged(String text) {
    print("Name$text");
  }

  @override
  void onHandleTextChanged(String text) {
    print(text);
  }
}
