import 'package:get/get.dart';
import 'dart:convert';

import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final isLoading = false.obs;
  final finalJson = {}.obs;
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
        "type": "ListBuilder",
        "padding": "10, 10, 10, 10",
        "children": [
          {
            "type": "Container",
            "click_event": "route/profile?id=1",
            "child": {
              "type": "Card",
              "elevation": 8.0,
              "borderOnForeground": true,
              "semanticContainer": true,
              "child": {
                "type": "Stack",
                "fit": "passthrough",
                "children": [
                  {
                    "type": "OptimizedCacheImage",
                    "memCacheHeight": 800,
                    "memCacheWidth": 800,
                    "maxHeightDiskCache": 800,
                    "maxWidthDiskCache": 800,
                    "imageUrl": "https://picsum.photos/200/300?a"
                  },
                  {
                    "type": "Container",
                    "alignment": null,
                    "padding": "18.0,18.0,18.0,18.0",
                    "color": null,
                    "margin": null,
                    "constraints": {
                      "minWidth": 345.0,
                      "maxWidth": 345.0,
                      "minHeight": 345.0,
                      "maxHeight": 345.0
                    },
                    "child": {
                      "type": "Row",
                      "crossAxisAlignment": "end",
                      "mainAxisAlignment": "spaceBetween",
                      "mainAxisSize": "max",
                      "textBaseline": "ideographic",
                      "textDirection": null,
                      "verticalDirection": "down",
                      "children": [
                        {
                          "type": "SizedBox",
                          "width": 220.0,
                          "height": null,
                          "child": {
                            "type": "Column",
                            "crossAxisAlignment": "start",
                            "mainAxisAlignment": "end",
                            "mainAxisSize": "max",
                            "textBaseline": "ideographic",
                            "textDirection": null,
                            "verticalDirection": "down",
                            "children": [
                              {
                                "type": "Text",
                                "data": "Lorem",
                                "textAlign": "start",
                                "overflow": null,
                                "maxLines": null,
                                "semanticsLabel": null,
                                "softWrap": null,
                                "textDirection": "ltr",
                                "style": {
                                  "color": "ffffff",
                                  "debugLabel": null,
                                  "decoration": "none",
                                  "fontSize": 18.0,
                                  "fontFamily": null,
                                  "fontStyle": "normal",
                                  "fontWeight": "w700"
                                },
                                "textScaleFactor": null
                              },
                              {
                                "type": "Text",
                                "data": "first",
                                "textAlign": "start",
                                "overflow": null,
                                "maxLines": null,
                                "semanticsLabel": null,
                                "softWrap": null,
                                "textDirection": "ltr",
                                "style": {
                                  "color": "ffffff",
                                  "debugLabel": null,
                                  "decoration": "none",
                                  "fontSize": 14.0,
                                  "fontFamily": null,
                                  "fontStyle": "normal",
                                  "fontWeight": "w400"
                                },
                                "textScaleFactor": null
                              },
                              {
                                "type": "Padding",
                                "padding": "0.0,4.0,0.0,0.0",
                                "child": {
                                  "type": "Text",
                                  "data": "initially loaded",
                                  "textAlign": "start",
                                  "overflow": null,
                                  "maxLines": null,
                                  "semanticsLabel": null,
                                  "softWrap": null,
                                  "textDirection": "ltr",
                                  "style": {
                                    "color": "ffffff",
                                    "debugLabel": null,
                                    "decoration": "none",
                                    "fontSize": 14.0,
                                    "fontFamily": null,
                                    "fontStyle": "normal",
                                    "fontWeight": "w600"
                                  },
                                  "textScaleFactor": null
                                }
                              }
                            ]
                          }
                        },
                      ]
                    }
                  }
                ]
              }
            },
          },
          {
            "type": "Container",
            "click_event": "route/profile?id=2",
            "child": {
              "type": "Card",
              "elevation": 8.0,
              "borderOnForeground": true,
              "semanticContainer": true,
              "child": {
                "type": "Stack",
                "fit": "passthrough",
                "children": [
                  {
                    "type": "OptimizedCacheImage",
                    "memCacheHeight": 800,
                    "memCacheWidth": 800,
                    "maxHeightDiskCache": 800,
                    "maxWidthDiskCache": 800,
                    "imageUrl": "https://picsum.photos/200/300?a"
                  },
                  {
                    "type": "Container",
                    "alignment": null,
                    "padding": "18.0,18.0,18.0,18.0",
                    "color": null,
                    "margin": null,
                    "constraints": {
                      "minWidth": 345.0,
                      "maxWidth": 345.0,
                      "minHeight": 345.0,
                      "maxHeight": 345.0
                    },
                    "child": {
                      "type": "Row",
                      "crossAxisAlignment": "end",
                      "mainAxisAlignment": "spaceBetween",
                      "mainAxisSize": "max",
                      "textBaseline": "ideographic",
                      "textDirection": null,
                      "verticalDirection": "down",
                      "children": [
                        {
                          "type": "SizedBox",
                          "width": 220.0,
                          "height": null,
                          "child": {
                            "type": "Column",
                            "crossAxisAlignment": "start",
                            "mainAxisAlignment": "end",
                            "mainAxisSize": "max",
                            "textBaseline": "ideographic",
                            "textDirection": null,
                            "verticalDirection": "down",
                            "children": [
                              {
                                "type": "Text",
                                "data": "Ipsum",
                                "textAlign": "start",
                                "overflow": null,
                                "maxLines": null,
                                "semanticsLabel": null,
                                "softWrap": null,
                                "textDirection": "ltr",
                                "style": {
                                  "color": "ffffff",
                                  "debugLabel": null,
                                  "decoration": "none",
                                  "fontSize": 18.0,
                                  "fontFamily": null,
                                  "fontStyle": "normal",
                                  "fontWeight": "w700"
                                },
                                "textScaleFactor": null
                              },
                              {
                                "type": "Text",
                                "data": "second",
                                "textAlign": "start",
                                "overflow": null,
                                "maxLines": null,
                                "semanticsLabel": null,
                                "softWrap": null,
                                "textDirection": "ltr",
                                "style": {
                                  "color": "ffffff",
                                  "debugLabel": null,
                                  "decoration": "none",
                                  "fontSize": 14.0,
                                  "fontFamily": null,
                                  "fontStyle": "normal",
                                  "fontWeight": "w400"
                                },
                                "textScaleFactor": null
                              },
                              {
                                "type": "Padding",
                                "padding": "0.0,4.0,0.0,0.0",
                                "child": {
                                  "type": "Text",
                                  "data": "initially loaded",
                                  "textAlign": "start",
                                  "overflow": null,
                                  "maxLines": null,
                                  "semanticsLabel": null,
                                  "softWrap": null,
                                  "textDirection": "ltr",
                                  "style": {
                                    "color": "ffffff",
                                    "debugLabel": null,
                                    "decoration": "none",
                                    "fontSize": 14.0,
                                    "fontFamily": null,
                                    "fontStyle": "normal",
                                    "fontWeight": "w600"
                                  },
                                  "textScaleFactor": null
                                }
                              }
                            ]
                          }
                        },
                      ]
                    }
                  }
                ]
              }
            },
          },
          {
            "type": "Container",
            "click_event": "route/profile?id=3",
            "child": {
              "type": "Card",
              "elevation": 8.0,
              "borderOnForeground": true,
              "semanticContainer": true,
              "child": {
                "type": "Stack",
                "fit": "passthrough",
                "children": [
                  {
                    "type": "OptimizedCacheImage",
                    "memCacheHeight": 800,
                    "memCacheWidth": 800,
                    "maxHeightDiskCache": 800,
                    "maxWidthDiskCache": 800,
                    "imageUrl": "https://picsum.photos/200/300?a"
                  },
                  {
                    "type": "Container",
                    "alignment": null,
                    "padding": "18.0,18.0,18.0,18.0",
                    "color": null,
                    "margin": null,
                    "constraints": {
                      "minWidth": 345.0,
                      "maxWidth": 345.0,
                      "minHeight": 345.0,
                      "maxHeight": 345.0
                    },
                    "child": {
                      "type": "Row",
                      "crossAxisAlignment": "end",
                      "mainAxisAlignment": "spaceBetween",
                      "mainAxisSize": "max",
                      "textBaseline": "ideographic",
                      "textDirection": null,
                      "verticalDirection": "down",
                      "children": [
                        {
                          "type": "SizedBox",
                          "width": 220.0,
                          "height": null,
                          "child": {
                            "type": "Column",
                            "crossAxisAlignment": "start",
                            "mainAxisAlignment": "end",
                            "mainAxisSize": "max",
                            "textBaseline": "ideographic",
                            "textDirection": null,
                            "verticalDirection": "down",
                            "children": [
                              {
                                "type": "Text",
                                "data": "Something",
                                "textAlign": "start",
                                "overflow": null,
                                "maxLines": null,
                                "semanticsLabel": null,
                                "softWrap": null,
                                "textDirection": "ltr",
                                "style": {
                                  "color": "ffffff",
                                  "debugLabel": null,
                                  "decoration": "none",
                                  "fontSize": 18.0,
                                  "fontFamily": null,
                                  "fontStyle": "normal",
                                  "fontWeight": "w700"
                                },
                                "textScaleFactor": null
                              },
                              {
                                "type": "Text",
                                "data": "Third",
                                "textAlign": "start",
                                "overflow": null,
                                "maxLines": null,
                                "semanticsLabel": null,
                                "softWrap": null,
                                "textDirection": "ltr",
                                "style": {
                                  "color": "ffffff",
                                  "debugLabel": null,
                                  "decoration": "none",
                                  "fontSize": 14.0,
                                  "fontFamily": null,
                                  "fontStyle": "normal",
                                  "fontWeight": "w400"
                                },
                                "textScaleFactor": null
                              },
                              {
                                "type": "Padding",
                                "padding": "0.0,4.0,0.0,0.0",
                                "child": {
                                  "type": "Text",
                                  "data": "initially loaded",
                                  "textAlign": "start",
                                  "overflow": null,
                                  "maxLines": null,
                                  "semanticsLabel": null,
                                  "softWrap": null,
                                  "textDirection": "ltr",
                                  "style": {
                                    "color": "ffffff",
                                    "debugLabel": null,
                                    "decoration": "none",
                                    "fontSize": 14.0,
                                    "fontFamily": null,
                                    "fontStyle": "normal",
                                    "fontWeight": "w600"
                                  },
                                  "textScaleFactor": null
                                }
                              }
                            ]
                          }
                        },
                      ]
                    }
                  }
                ]
              }
            },
          },
        ]
      };
      final tileCardJson = {
        "type": "Card",
        "color": "ffffffff",
        "shadowColor": "40bababa",
        "elevation": 8.0,
        "borderOnForeground": true,
        "margin": "0.0,0.0,0.0,0.0,",
        "semanticContainer": true,
        "child": {
          "type": "Stack",
          "alignment": "topStart",
          "textDirection": "ltr",
          "fit": "loose",
          "clipBehavior": "hardEdge",
          "children": [
            {
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
                  "padding": "12.0,12.0,8.0,12.0",
                  "color": null,
                  "margin": null,
                  "constraints": null,
                  "child": {
                    "type": "Container",
                    "alignment": "center",
                    "padding": null,
                    "color": null,
                    "margin": null,
                    "constraints": {
                      "minWidth": 91.0,
                      "maxWidth": 91.0,
                      "minHeight": 91.0,
                      "maxHeight": 91.0
                    },
                    "child": {
                      "type": "Container",
                      "alignment": null,
                      "padding": null,
                      "color": null,
                      "margin": null,
                      "constraints": {
                        "minWidth": 65.0,
                        "maxWidth": 65.0,
                        "minHeight": 65.0,
                        "maxHeight": 65.0
                      },
                      "child": null
                    }
                  }
                },
                {
                  "type": "Expanded",
                  "flex": 1,
                  "child": {
                    "type": "Container",
                    "alignment": null,
                    "padding": "0.0,12.0,0.0,12.0",
                    "color": null,
                    "margin": null,
                    "constraints": null,
                    "child": {
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
                          "data": "Someone again",
                          "textAlign": "start",
                          "overflow": "ellipsis",
                          "maxLines": null,
                          "semanticsLabel": null,
                          "softWrap": false,
                          "textDirection": "ltr",
                          "style": {
                            "color": null,
                            "debugLabel": null,
                            "decoration": "none",
                            "fontSize": null,
                            "fontFamily": null,
                            "fontStyle": "normal",
                            "fontWeight": "w500"
                          },
                          "textScaleFactor": null
                        },
                        {
                          "type": "Text",
                          "data": "dev",
                          "textAlign": "start",
                          "overflow": "ellipsis",
                          "maxLines": null,
                          "semanticsLabel": null,
                          "softWrap": false,
                          "textDirection": "ltr",
                          "style": {
                            "color": "ff828282",
                            "debugLabel": null,
                            "decoration": "none",
                            "fontSize": null,
                            "fontFamily": null,
                            "fontStyle": "normal",
                            "fontWeight": "w400"
                          },
                          "textScaleFactor": null
                        },
                        {
                          "type": "Text",
                          "data": "teamName",
                          "textAlign": "start",
                          "overflow": "ellipsis",
                          "maxLines": null,
                          "semanticsLabel": null,
                          "softWrap": false,
                          "textDirection": "ltr",
                          "style": {
                            "color": "ff4f4f4f",
                            "debugLabel": null,
                            "decoration": "none",
                            "fontSize": null,
                            "fontFamily": null,
                            "fontStyle": "normal",
                            "fontWeight": "w400"
                          },
                          "textScaleFactor": null
                        }
                      ]
                    }
                  }
                },
                {
                  "type": "Container",
                  "alignment": null,
                  "padding": "2.0,0.0,7.0,0.0",
                  "color": null,
                  "margin": null,
                  "constraints": null,
                  "child": {
                    "type": "Icon",
                    "data": "android",
                    "size": 22.0,
                    "color": "e6bcbcbc",
                    "semanticLabel": null,
                    "textDirection": null
                  }
                }
              ]
            }
          ]
        }
      };
      isLoading.value = false;
    });
  }

  @override
  void onClose() {}

  Widget buildWidget(BuildContext context) {
    return DynamicWidgetBuilder.build(
            jsonEncode(finalJson), context, HomeClickListener(context)) ??
        SizedBox();
  }
}

class HomeClickListener extends ClickListener {
  final BuildContext context;
  HomeClickListener(this.context);

  @override
  void onClicked(String? event) async {
    print("Receive click event: ${event ?? ""}");
    if (event != null) {
      final eventInfo = Uri.parse(event);
      final path = eventInfo.path;
      final parameters = eventInfo.queryParameters;
      switch (path) {
        case "route/profile":
          Get.toNamed(Routes.PROFILE, arguments: parameters);
          break;
        case "switchtab/hometab":
          break;
      }
    }
  }

  Future<String> getMoreItems(int limit, int offset) {
    return Future.delayed(const Duration(seconds: 2), () {
      return """
      [
           {
        "type": "Container",
        "click_event": "/second",
        "child": {
          "type": "Card",
          "elevation": 8.0,
          "borderOnForeground": true,
          "semanticContainer": true,
          "child": {
            "type": "Stack",
            "fit": "passthrough",
            "children": [{
                "type": "OptimizedCacheImage",
                "memCacheHeight": 800,
                "memCacheWidth": 800,
                "maxHeightDiskCache": 800,
                "maxWidthDiskCache": 800,
                "imageUrl": "https://picsum.photos/200/300?a"
              },
              {
                "type": "Container",
                "alignment": null,
                "padding": "18.0,18.0,18.0,18.0",
                "color": null,
                "margin": null,
                "constraints": {
                  "minWidth": 345.0,
                  "maxWidth": 345.0,
                  "minHeight": 345.0,
                  "maxHeight": 345.0
                },
                "child": {
                  "type": "Row",
                  "crossAxisAlignment": "end",
                  "mainAxisAlignment": "spaceBetween",
                  "mainAxisSize": "max",
                  "textBaseline": "ideographic",
                  "textDirection": null,
                  "verticalDirection": "down",
                  "children": [{
                    "type": "SizedBox",
                    "width": 220.0,
                    "height": null,
                    "child": {
                      "type": "Column",
                      "crossAxisAlignment": "start",
                      "mainAxisAlignment": "end",
                      "mainAxisSize": "max",
                      "textBaseline": "ideographic",
                      "textDirection": null,
                      "verticalDirection": "down",
                      "children": [{
                          "type": "Text",
                          "data": "Paginated one",
                          "textAlign": "start",
                          "overflow": null,
                          "maxLines": null,
                          "semanticsLabel": null,
                          "softWrap": null,
                          "textDirection": "ltr",
                          "style": {
                            "color": "ffffff",
                            "debugLabel": null,
                            "decoration": "none",
                            "fontSize": 18.0,
                            "fontFamily": null,
                            "fontStyle": "normal",
                            "fontWeight": "w700"
                          },
                          "textScaleFactor": null
                        },
                        {
                          "type": "Text",
                          "data": "Server one",
                          "textAlign": "start",
                          "overflow": null,
                          "maxLines": null,
                          "semanticsLabel": null,
                          "softWrap": null,
                          "textDirection": "ltr",
                          "style": {
                            "color": "ffffff",
                            "debugLabel": null,
                            "decoration": "none",
                            "fontSize": 14.0,
                            "fontFamily": null,
                            "fontStyle": "normal",
                            "fontWeight": "w400"
                          },
                          "textScaleFactor": null
                        },
                        {
                          "type": "Padding",
                          "padding": "0.0,4.0,0.0,0.0",
                          "child": {
                            "type": "Text",
                            "data": "from backend",
                            "textAlign": "start",
                            "overflow": null,
                            "maxLines": null,
                            "semanticsLabel": null,
                            "softWrap": null,
                            "textDirection": "ltr",
                            "style": {
                              "color": "ffffff",
                              "debugLabel": null,
                              "decoration": "none",
                              "fontSize": 14.0,
                              "fontFamily": null,
                              "fontStyle": "normal",
                              "fontWeight": "w600"
                            },
                            "textScaleFactor": null
                          }
                        }
                      ]
                    }
                  }]
                }
              }
            ]
          }
        }
      },
      {
        "type": "Container",
        "click_event": "/second",
        "child": {
          "type": "Card",
          "elevation": 8.0,
          "borderOnForeground": true,
          "semanticContainer": true,
          "child": {
            "type": "Stack",
            "fit": "passthrough",
            "children": [{
                "type": "OptimizedCacheImage",
                "memCacheHeight": 800,
                "memCacheWidth": 800,
                "maxHeightDiskCache": 800,
                "maxWidthDiskCache": 800,
                "imageUrl": "https://picsum.photos/200/300?a"
              },
              {
                "type": "Container",
                "alignment": null,
                "padding": "18.0,18.0,18.0,18.0",
                "color": null,
                "margin": null,
                "constraints": {
                  "minWidth": 345.0,
                  "maxWidth": 345.0,
                  "minHeight": 345.0,
                  "maxHeight": 345.0
                },
                "child": {
                  "type": "Row",
                  "crossAxisAlignment": "end",
                  "mainAxisAlignment": "spaceBetween",
                  "mainAxisSize": "max",
                  "textBaseline": "ideographic",
                  "textDirection": null,
                  "verticalDirection": "down",
                  "children": [{
                    "type": "SizedBox",
                    "width": 220.0,
                    "height": null,
                    "child": {
                      "type": "Column",
                      "crossAxisAlignment": "start",
                      "mainAxisAlignment": "end",
                      "mainAxisSize": "max",
                      "textBaseline": "ideographic",
                      "textDirection": null,
                      "verticalDirection": "down",
                      "children": [{
                          "type": "Text",
                          "data": "Paginated two",
                          "textAlign": "start",
                          "overflow": null,
                          "maxLines": null,
                          "semanticsLabel": null,
                          "softWrap": null,
                          "textDirection": "ltr",
                          "style": {
                            "color": "ffffff",
                            "debugLabel": null,
                            "decoration": "none",
                            "fontSize": 18.0,
                            "fontFamily": null,
                            "fontStyle": "normal",
                            "fontWeight": "w700"
                          },
                          "textScaleFactor": null
                        },
                        {
                          "type": "Text",
                          "data": "Server two",
                          "textAlign": "start",
                          "overflow": null,
                          "maxLines": null,
                          "semanticsLabel": null,
                          "softWrap": null,
                          "textDirection": "ltr",
                          "style": {
                            "color": "ffffff",
                            "debugLabel": null,
                            "decoration": "none",
                            "fontSize": 14.0,
                            "fontFamily": null,
                            "fontStyle": "normal",
                            "fontWeight": "w400"
                          },
                          "textScaleFactor": null
                        },
                        {
                          "type": "Padding",
                          "padding": "0.0,4.0,0.0,0.0",
                          "child": {
                            "type": "Text",
                            "data": "from backend",
                            "textAlign": "start",
                            "overflow": null,
                            "maxLines": null,
                            "semanticsLabel": null,
                            "softWrap": null,
                            "textDirection": "ltr",
                            "style": {
                              "color": "ffffff",
                              "debugLabel": null,
                              "decoration": "none",
                              "fontSize": 14.0,
                              "fontFamily": null,
                              "fontStyle": "normal",
                              "fontWeight": "w600"
                            },
                            "textScaleFactor": null
                          }
                        }
                      ]
                    }
                  }]
                }
              }
            ]
          }
        }
      }
      ]          
      """;
    });
  }
}
