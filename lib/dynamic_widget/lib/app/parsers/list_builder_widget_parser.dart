import 'dart:convert';

import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:flutter/material.dart';

class ListBuilderWidgetParser extends WidgetParser {
  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    var scrollDirection = Axis.vertical;
    if (map.containsKey("scrollDirection") &&
        "horizontal" == map["scrollDirection"]) {
      scrollDirection = Axis.horizontal;
    }

    var reverse = map.containsKey("reverse") ? map['reverse'] : false;
    var shrinkWrap = map.containsKey("shrinkWrap") ? map["shrinkWrap"] : false;
    var cacheExtent =
        map.containsKey("cacheExtent") ? map["cacheExtent"]?.toDouble() : 0.0;
    var padding = map.containsKey('padding')
        ? parseEdgeInsetsGeometry(map['padding'])
        : null;
    var itemExtent =
        map.containsKey("itemExtent") ? map["itemExtent"]?.toDouble() : null;
    var children = DynamicWidgetBuilder.buildWidgets(
        map['children'], buildContext, listener);
    var pageSize = map.containsKey("pageSize") ? map["pageSize"] : 10;
    Function? getMoreItems;
    if (listener is AbstractHomeCLickListener) {
      getMoreItems = (listener).getMoreItems;
    }

    final params = ListViewParams(
      scrollDirection: scrollDirection,
      reverse: reverse,
      shrinkWrap: shrinkWrap,
      cacheExtent: cacheExtent,
      padding: padding,
      itemExtent: itemExtent,
      children: children,
      pageSize: pageSize,
      getMoreItems: getMoreItems,
    );

    return ListViewWidget(params, buildContext);
  }

  @override
  String get widgetName => "ListBuilder";

  @override
  Map<String, dynamic> export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as ListViewWidget;
    String scrollDirection = "vertical";
    if (realWidget._params.scrollDirection == Axis.horizontal) {
      scrollDirection = "horizontal";
    }

    var padding = realWidget._params.padding as EdgeInsets?;
    var tempChild =
        DynamicWidgetBuilder.export(widget._params.tempChild, buildContext);
    return <String, dynamic>{
      "type": "ListView",
      "scrollDirection": scrollDirection,
      "reverse": realWidget._params.reverse ?? false,
      "shrinkWrap": realWidget._params.shrinkWrap ?? false,
      "cacheExtent": realWidget._params.cacheExtent ?? 0.0,
      "padding": padding != null
          ? "${padding.left},${padding.top},${padding.right},${padding.bottom}"
          : null,
      "itemExtent": realWidget._params.itemExtent,
      "pageSize": realWidget._params.pageSize ?? 10,
      "children": DynamicWidgetBuilder.exportWidgets(
          realWidget._params.children ?? [], buildContext),
      "tempChild": tempChild,
      "dataKey": realWidget._params.dataKey,
    };
  }

  @override
  Type get widgetType => ListViewWidget;
}

class ListViewWidget extends StatefulWidget {
  final ListViewParams _params;
  final BuildContext _buildContext;

  const ListViewWidget(
    this._params,
    this._buildContext,
  );

  @override
  _ListViewWidgetState createState() => _ListViewWidgetState(_params);
}

class _ListViewWidgetState extends State<ListViewWidget> {
  final ListViewParams _params;
  final List<Widget?> _items = [];

  final ScrollController _scrollController = ScrollController();
  bool isPerformingRequest = false;

  //If there are no more items, it should not try to load more data while scroll
  //to bottom.
  bool loadCompleted = false;

  _ListViewWidgetState(this._params) {
    if (_params.children != null) {
      _items.addAll(_params.children!);
    }
  }

  @override
  void initState() {
    super.initState();
    if (_params.getMoreItems == null) {
      loadCompleted = true;
      return;
    }
    _scrollController.addListener(() {
      if (!loadCompleted &&
          _scrollController.position.pixels ==
              _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  _getMoreData() async {
    if (!isPerformingRequest) {
      setState(() => isPerformingRequest = true);
      var jsonString = await _params.getMoreItems!(5, 5);
      if (!mounted) return;
      var buildWidgets = DynamicWidgetBuilder.buildWidgets(
          jsonDecode(jsonString), widget._buildContext, null);
      setState(() {
        if (buildWidgets.isEmpty) {
          loadCompleted = true;
        }
        _items.addAll(buildWidgets);
        isPerformingRequest = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget _buildProgressIndicator() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Opacity(
          opacity: isPerformingRequest ? 1.0 : 0.0,
          child: const CircularProgressIndicator(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: _params.scrollDirection ?? Axis.vertical,
      reverse: _params.reverse ?? false,
      shrinkWrap: _params.shrinkWrap ?? false,
      cacheExtent: _params.cacheExtent,
      padding: _params.padding,
      itemCount: loadCompleted ? _items.length : _items.length + 1,
      itemBuilder: (context, index) {
        if (index == _items.length) {
          return _buildProgressIndicator();
        } else {
          return _items[index]!;
        }
      },
      controller: _scrollController,
    );
  }
}

class ListViewParams {
  Axis? scrollDirection;
  bool? reverse;
  bool? shrinkWrap;
  double? cacheExtent;
  EdgeInsetsGeometry? padding;
  double? itemExtent;
  List<Widget?>? children;

  /// use to data binding
  String? dataKey;

  /// use to data binding
  Widget? tempChild;

  int? pageSize;
  Function? getMoreItems;

  ListViewParams(
      {this.scrollDirection,
      this.reverse,
      this.shrinkWrap,
      this.cacheExtent,
      this.padding,
      this.itemExtent,
      this.children,
      this.pageSize,
      this.getMoreItems,
      this.tempChild,
      this.dataKey});
}
