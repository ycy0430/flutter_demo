import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/roll/scrollController.dart';
import 'package:flutter_demo/pages/roll/customScrollView.dart';
import 'package:flutter_demo/pages/roll/gridview.dart';
import 'package:flutter_demo/pages/roll/listview.dart';
import 'package:flutter_demo/pages/roll/singleChildScrollView.dart';

class RollPage extends StatefulWidget {
  RollPage({Key key}) : super(key: key);

  @override
  _RollPageState createState() => _RollPageState();
}

class _RollPageState extends State<RollPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  //tabbar分类集合
  final tabs = [
    'SingleChildScrollView',
    'ListView',
    'GridView',
    'CustomScrollView',
    '滚动监听及控制',
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
            singleChildScrollView(),
            InfiniteListView(),
            InfiniteGridView(),
            CustomScrollViewTestRoute(),
            ScrollControllerTestRoute(),
          ],
        ),
      ),
    );
  }
}
