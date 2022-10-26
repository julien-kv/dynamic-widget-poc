import 'package:get/get.dart';
import 'dart:convert';

import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

class ProfileController extends GetxController {
  Map argumentData = Get.arguments;
  final isLoading = false.obs;
  final finalJson = {}.obs;
  @override
  void onInit() async {
    super.onInit();
    loadPage();
  }

  Future<void> loadPage() async {
    isLoading.value = true;
    final employeeId = argumentData["id"];
    Future.delayed(
        Duration(
          seconds: 1,
        ), () {
      finalJson.value = {
        "type": "Column",
        "crossAxisAlignment": "center",
        "mainAxisAlignment": "start",
        "mainAxisSize": "max",
        "textBaseline": "ideographic",
        "textDirection": null,
        "verticalDirection": "down",
        "children": [
          {"type": "Padding", "padding": "0.0,50.0,0.0,0.0", "child": null},
          {
            "type": "Container",
            "alignment": null,
            "padding": null,
            "color": null,
            "margin": "0.0,5.0,0.0,5.0",
            "constraints": {
              "minWidth": 100.0,
              "maxWidth": 100.0,
              "minHeight": 100.0,
              "maxHeight": 100.0
            },
            "child": null
          },
          {"type": "Padding", "padding": "0.0,10.0,0.0,10.0", "child": null},
          {
            "type": "SizedBox",
            "width": null,
            "height": null,
            "child": {
              "type": "Text",
              "data": "Someone you know with employee id $employeeId",
              "textAlign": "center",
              "overflow": null,
              "maxLines": null,
              "semanticsLabel": null,
              "softWrap": null,
              "textDirection": "ltr",
              "style": {
                "color": null,
                "debugLabel": null,
                "decoration": "none",
                "fontSize": 20.0,
                "fontFamily": null,
                "fontStyle": "normal",
                "fontWeight": "normal"
              },
              "textScaleFactor": null
            }
          },
          {"type": "Padding", "padding": "0.0,10.0,0.0,10.0", "child": null},
          {
            "type": "Text",
            "data": "Developer",
            "textAlign": "start",
            "overflow": null,
            "maxLines": null,
            "semanticsLabel": null,
            "softWrap": null,
            "textDirection": "ltr",
            "style": {
              "color": null,
              "debugLabel": null,
              "decoration": "none",
              "fontSize": null,
              "fontFamily": null,
              "fontStyle": "normal",
              "fontWeight": "w700"
            },
            "textScaleFactor": null
          },
          {"type": "Padding", "padding": "0.0,10.0,0.0,10.0", "child": null},
          {
            "type": "Text",
            "data": "Painter to light",
            "textAlign": "start",
            "overflow": null,
            "maxLines": null,
            "semanticsLabel": null,
            "softWrap": null,
            "textDirection": "ltr",
            "style": null,
            "textScaleFactor": null
          }
        ]
      };
      isLoading.value = false;
    });
  }

  @override
  void onClose() {}

  Widget buildWidget(BuildContext context) {
    return DynamicWidgetBuilder.build(
            jsonEncode(finalJson), context, ProfileClickListener(context)) ??
        SizedBox();
  }
}

class ProfileClickListener extends ClickListener {
  final BuildContext context;
  ProfileClickListener(this.context);

  @override
  void onClicked(String? event) async {}
}
