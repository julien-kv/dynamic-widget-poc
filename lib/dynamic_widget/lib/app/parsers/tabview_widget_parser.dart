import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:dynamic_widget/dynamic_widget/utils.dart';
import 'package:flutter/material.dart';

class TabViewWidgetParser extends WidgetParser {
  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    final tabPadding = map.containsKey('tabPadding')
        ? parseEdgeInsetsGeometry(map['tabPadding'])
        : null;
    final tabViewHeight =
        map.containsKey('tabViewHeight') ? map['tabViewHeight'] : 500;
    final tabChildren = DynamicWidgetBuilder.buildWidgets(
        map['tabChildren'], buildContext, listener);
    final tabViewChildren = DynamicWidgetBuilder.buildWidgets(
        map['tabViewChildren'], buildContext, listener);

    final params = TabViewParams(
      tabPadding: tabPadding,
      tabChildren: tabChildren,
      tabViewChildren: tabViewChildren,
      tabViewHeight: tabViewHeight.toDouble(),
    );

    return TabViewWidget(params);
  }

  @override
  String get widgetName => "TabView";

  @override
  Map<String, dynamic> export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as TabViewWidget;
    var padding = realWidget._params.tabPadding as EdgeInsets?;
    var tempChild =
        DynamicWidgetBuilder.export(widget._params.tempChild, buildContext);
    return <String, dynamic>{
      "type": "TabView",
      "tabPadding": padding != null
          ? "${padding.left},${padding.top},${padding.right},${padding.bottom}"
          : null,
      "tabChildren": DynamicWidgetBuilder.exportWidgets(
          realWidget._params.tabChildren ?? [], buildContext),
      "tabViewChildren": DynamicWidgetBuilder.exportWidgets(
          realWidget._params.tabViewChildren ?? [], buildContext),
      "tempChild": tempChild,
      "dataKey": realWidget._params.dataKey,
      "tabViewHeight": realWidget._params.tabViewHeight,
    };
  }

  @override
  Type get widgetType => TabViewWidget;
}

class TabViewWidget extends StatefulWidget {
  final TabViewParams _params;

  TabViewWidget(this._params);

  @override
  _TabViewWidgetState createState() => _TabViewWidgetState(_params);
}

class _TabViewWidgetState extends State<TabViewWidget>
    with SingleTickerProviderStateMixin {
  final TabViewParams _params;
  List<Widget> _tabViewItems = [];
  List<Widget> _tabItems = [];

  late TabController _tabController;

  _TabViewWidgetState(this._params) {
    if (_params.tabViewChildren != null && _params.tabChildren != null) {
      _tabViewItems.addAll([
        for (var i in _params.tabViewChildren!)
          if (i != null) i
      ]);
      _tabItems.addAll([
        for (var i in _params.tabChildren!)
          if (i != null) i
      ]);
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabItems.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            controller: _tabController,
            tabs: _tabItems
                .map((e) => Tab(
                      child: e,
                    ))
                .toList(),
          ),
          SizedBox(
            height: _params.tabViewHeight,
            child:
                TabBarView(controller: _tabController, children: _tabViewItems),
          ),
        ],
      ),
    );
  }
}

class TabViewParams {
  EdgeInsetsGeometry? tabPadding;

  List<Widget?>? tabChildren;
  List<Widget?>? tabViewChildren;

  double? tabViewHeight;

  /// use to data binding
  String? dataKey;

  /// use to data binding
  Widget? tempChild;

  TabViewParams(
      {this.tabPadding,
      this.tabChildren,
      this.tabViewHeight,
      this.tabViewChildren,
      this.tempChild,
      this.dataKey});
}
