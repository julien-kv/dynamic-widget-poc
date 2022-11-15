import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';
import 'package:optimized_cached_image/optimized_cached_image.dart';

/// This parser handles only [OptimizedCacheImage] with [imageUrl], [placeholder] and
/// [errorWidget] where [placeholder] and [errorWidget] accepts [placeholder] and[errorWidget] as parameter
class OptimizedCacheImageParser extends WidgetParser {
  @override
  String get widgetName => "OptimizedCacheImage";

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    Icon? placeholder = map.containsKey("placeholder")
        ? Icon(
            IconData(
              map["placeholder"]["iconCodePoint"],
              fontFamily: map["placeholder"]["iconFamily"],
            ),
            size: map["placeholder"]["size"],
          )
        : null;

    Icon? errorWidget = map.containsKey("errorWidget")
        ? Icon(
            IconData(
              map["errorWidget"]["iconCodePoint"],
              fontFamily: map["errorWidget"]["iconFamily"],
            ),
            size: map["errorWidget"]["size"],
          )
        : Icon(Icons.error);

    var optimizedCacheImage = OptimizedCacheImage(
      fit: BoxFit.cover,
      imageUrl: map["imageUrl"],
      placeholder: (context, _) {
        return placeholder ?? CircularProgressIndicator();
      },
      errorWidget: (context, url, error) {
        debugPrint(error);
        OptimizedCacheImage.evictFromCache(url);
        return errorWidget;
      },
    );
    return optimizedCacheImage;
  }

  @override
  Map<String, dynamic>? export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as OptimizedCacheImage;
    var imageUrl = realWidget.imageUrl;

    return <String, dynamic>{
      "type": widgetName,
      "imageUrl": imageUrl,
    };
  }

  @override
  Type get widgetType => OptimizedCacheImage;
}
