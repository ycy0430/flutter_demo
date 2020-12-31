import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/layout/alignment.dart';
import 'package:flutter_demo/pages/layout/flex.dart';
import 'package:flutter_demo/pages/layout/rowandcolumn.dart';
import 'package:flutter_demo/pages/layout/stack.dart';
import 'package:flutter_demo/pages/layout/wrapAndFlow.dart';

class LayoutPage extends StatefulWidget {
  LayoutPage({Key key}) : super(key: key);

  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  //tabbar分类集合
  final tabs = [
    '线性布局（Row和Column）',
    '弹性布局（Flex）',
    '流式布局（Wrap和Flow）',
    '层叠布局(Stack、Positioned)',
    '对齐与相对定位(Align)',
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //初始化控制器
    _controller = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //销毁控制器
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          //可滑动
          isScrollable: true,
          controller: _controller,
          //生成tabs
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: TabBarView(
          controller: _controller,
          //内容区域，个数、位置需要对应
          children: <Widget>[
            rowAndColumn(),
            flex(),
            wrapAndFlow(),
            stack(),
            alignment(),
          ],
        ),
      ),
    );
  }
}
