import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onboarding/app/helper/init_parser.dart';

import 'app/routes/app_pages.dart';

void main() {
  InitParser();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
