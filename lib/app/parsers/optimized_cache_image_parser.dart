import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';
import 'package:optimized_cached_image/optimized_cached_image.dart';

class OptimizedCacheImageParser extends WidgetParser {
  @override
  String get widgetName => "OptimizedCacheImage";

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    print(">>>>>>>>>>>>>>>>>>>>");
    print("OptimizedCacheImage");

    String clickEvent =
        map.containsKey("click_event") ? map['click_event'] : "";
    double width = map['width'];
    double height = map['height'];
    var optimizedCacheImage = OptimizedCacheImage(
      memCacheHeight:
          map.containsKey('memCacheHeight') ? map['memCacheHeight'] : null,
      memCacheWidth:
          map.containsKey('memCacheWidth') ? map['memCacheWidth'] : null,
      maxHeightDiskCache: map.containsKey('maxHeightDiskCache')
          ? map['maxHeightDiskCache']
          : null,
      maxWidthDiskCache: map.containsKey('maxWidthDiskCache')
          ? map['maxWidthDiskCache']
          : null,
      imageUrl: "https://picsum.photos/200/300",
      imageBuilder: (context, imageProvider) => Ink(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      errorWidget: (context, url, error) {
        OptimizedCacheImage.evictFromCache(url);
        return Ink(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: ResizeImage(
                NetworkImage("https://picsum.photos/200/300"),
                height: 44,
                width: 44,
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        );
      },
    );
    try {
      print(">>>>>>>>>>>>>>>>>>>>");
      print(optimizedCacheImage.imageUrl);
    } catch (e) {
      print(e);
    }
    return optimizedCacheImage;
  }

  @override
  Map<String, dynamic>? export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as OptimizedCacheImage;
    var imageUrl = realWidget.imageUrl;
    var memCacheHeight = realWidget.memCacheHeight;
    var memCacheWidth = realWidget.memCacheWidth;
    var maxHeightDiskCache = realWidget.maxHeightDiskCache;
    var maxWidthDiskCache = realWidget.maxWidthDiskCache;
    var width = realWidget.width;
    var height = realWidget.height;
    return <String, dynamic>{
      "type": widgetName,
      "imageUrl": imageUrl,
      "memCacheHeight": memCacheHeight?.toString(),
      "memCacheWidth": memCacheWidth?.toString(),
      "maxHeightDiskCache": maxHeightDiskCache?.toString(),
      "maxWidthDiskCache": maxWidthDiskCache?.toString(),
      "width": width ?? 0,
      "height": height ?? 0,
    };
  }

  @override
  Type get widgetType => OptimizedCacheImage;
}
