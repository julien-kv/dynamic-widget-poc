import "package:flutter/material.dart";
import "package:dynamic_widget/dynamic_widget/basic/dynamic_widget_json_exportor.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optimized_cached_image/optimized_cached_image.dart';

import 'json_export.dart';

class HomePageJSONExporter extends StatefulWidget {
  @override
  _HomePageJSONExporterState createState() => _HomePageJSONExporterState();
}

class _HomePageJSONExporterState extends State<HomePageJSONExporter> {
  GlobalKey key = GlobalKey();

  final TextStyle selectedTextStyle = TextStyle(
    color: Colors.blue[50],
    fontWeight: FontWeight.w400,
  );

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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 14,
                    right: 14,
                    top: 12,
                  ),
                  child: SizedBox(
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Expanded(
                        //   child: Stack(
                        //     fit: StackFit.passthrough,
                        //     alignment: Alignment.bottomCenter,
                        //     children: [
                        //       // InkWell(
                        //       //   onTap: () {},
                        //       //   child:
                        //       Ink(
                        //         height: 40,
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(5),
                        //           color: AppColors.lightSteelBlue,
                        //         ),
                        //         child: Center(
                        //           child: Text(
                        //             'Birthdays',
                        //             style: selectedTextStyle,
                        //             textAlign: TextAlign.center,
                        //           ),
                        //         ),
                        //       ),
                        //       // ),
                        //       Align(
                        //         alignment: Alignment.topCenter,
                        //         child:
                        //             // InkWell(
                        //             //   onTap: () {},
                        //             //   child:
                        //             Container(
                        //           width: 30,
                        //           height: 30,
                        //           padding: const EdgeInsets.all(5),
                        //           // decoration: BoxDecoration(
                        //           //   shape: BoxShape.circle,
                        //           //   color: AppColors.lightSteelBlue,
                        //           // ),
                        //           child: SvgPicture.asset(
                        //             AppImages.leaveChannelIcon,
                        //             color: AppColors.steelBlue,
                        //           ),
                        //         ),
                        //         // ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // SizedBox(width: 10),
                        // Expanded(
                        //   child: Stack(
                        //     fit: StackFit.passthrough,
                        //     alignment: Alignment.bottomCenter,
                        //     children: [
                        //       // InkWell(
                        //       //   onTap: () {},
                        //       //   child:
                        //       Ink(
                        //         height: 40,
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(5),
                        //           color: const Color(0xFFF5F5F5),
                        //         ),
                        //         child: Center(
                        //           child: Text(
                        //             'Work Anivarsary',
                        //             style: selectedTextStyle,
                        //             textAlign: TextAlign.center,
                        //           ),
                        //         ),
                        //       ),
                        //       // ),
                        //       Align(
                        //         alignment: Alignment.topCenter,
                        //         child:
                        //             //  GestureDetector(
                        //             //   onTap: () {},
                        //             //   child:
                        //             Container(
                        //           width: 30,
                        //           height: 30,
                        //           padding: const EdgeInsets.all(5),
                        //           // decoration: const BoxDecoration(
                        //           //   shape: BoxShape.circle,
                        //           //   color: Color(0xFFF5F5F5),
                        //           // ),
                        //           child: SvgPicture.asset(
                        //             AppImages.leaveChannelIcon,
                        //             color: AppColors.lightGray,
                        //           ),
                        //         ),
                        //         // ),
                        //       ),
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  width: 347,
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 12,
                    bottom: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 51,
                        height: 51,
                        padding: const EdgeInsets.all(
                          2,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            25.5,
                          ),
                        ),
                        child: Container(
                          width: 46,
                          height: 46,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              23,
                            ),
                          ),
                          padding: const EdgeInsets.all(3),
                          child: OptimizedCacheImage(
                            width: 44,
                            height: 44,
                            memCacheHeight: 800.h.toInt(),
                            memCacheWidth: 800.w.toInt(),
                            maxHeightDiskCache: 800.h.toInt(),
                            maxWidthDiskCache: 800.w.toInt(),
                            imageUrl: "https://picsum.photos/200/300?a",
                            imageBuilder: (context, imageProvider) => Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(22),
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) {
                              OptimizedCacheImage.evictFromCache(url);
                              return Container(
                                width: 44,
                                height: 44,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: ResizeImage(
                                      AssetImage(
                                        "https://picsum.photos/200/300?a",
                                      ),
                                      height: 44,
                                      width: 44,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(22),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'employeeName',
                          ),
                        ],
                      ),
                    ],
                  ),
                )
                // SizedBox(
                //   // width: Get.width,
                //   child: Row(
                //     children: [
                //       const Expanded(
                //         child: Divider(
                //           thickness: 1,
                //         ),
                //       ),
                //       Container(
                //         height: 38,
                //         width: 142,
                //         alignment: Alignment.center,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(20),
                //           color: AppColors.faintGray,
                //         ),
                //         child: Text(
                //           'Today',
                //           style: AppTextStyle.semiBoldStyle.copyWith(
                //             fontSize: 14,
                //             color: const Color(0xFF676767),
                //           ),
                //         ),
                //       ),
                //       const Expanded(
                //         child: Divider(
                //           thickness: 1,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
          Container(
            child: ElevatedButton(
              child: const Text("Export"),
              onPressed: () {
                var exportor = key.currentWidget as DynamicWidgetJsonExportor;
                var exportJsonString = exportor.exportJsonString(context);
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
