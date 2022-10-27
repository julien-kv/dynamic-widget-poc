import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';
import 'package:optimized_cached_image/optimized_cached_image.dart';

class OptimizedCacheImageParser extends WidgetParser {
  @override
  String get widgetName => "OptimizedCacheImage";

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    String clickEvent =
        map.containsKey("click_event") ? map['click_event'] : "";
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
      imageUrl: map['imageUrl'].toString(),
      imageBuilder: (context, imageProvider) => Ink(
        width: 345,
        height: 345,
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
          width: 345,
          height: 345,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: ResizeImage(
                NetworkImage("https://picsum.photos/200/300"),
                height: 345,
                width: 345,
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
    return <String, dynamic>{
      "type": widgetName,
      "imageUrl": imageUrl,
      "memCacheHeight": memCacheHeight?.toString(),
      "memCacheWidth": memCacheWidth?.toString(),
      "maxHeightDiskCache": maxHeightDiskCache?.toString(),
      "maxWidthDiskCache": maxWidthDiskCache?.toString(),
    };
  }

  @override
  // TODO: implement widgetType
  Type get widgetType => OptimizedCacheImage;
}
