import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/app/routes/app_pages.dart';

class SampleFeature extends StatelessWidget {
  const SampleFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Get.toNamed(Routes.LOGIN);
            },
            child: Text('Back to Home Page'),
          )
        ],
      ),
    );
  }
}
