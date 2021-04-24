import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/container/clip.dart';
import 'package:flutter_demo/pages/container/constrainedboxAndSizebox.dart';
import 'package:flutter_demo/pages/container/container1.dart';
import 'package:flutter_demo/pages/container/decoratedbox.dart';
import 'package:flutter_demo/pages/container/padding.dart';
import 'package:flutter_demo/pages/container/scaffold.dart';
import 'package:flutter_demo/pages/container/transform.dart';

class ContainerPage extends StatefulWidget {
  ContainerPage({Key key}) : super(key: key);

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  //tabbar分类集合
  final tabs = [
    '填充（Padding）',
    '尺寸限制容器',
    '装饰容器DecoratedBox',
    '变换（Transform）',
    'Container容器',
    'Scaffold、TabBar、底部导航',
    '剪裁（Clip）',
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
            padding(),
            constrainedboxAndSizebox(),
            decoratedbox(),
            transform(),
            container(),
            ScaffoldRoute(),
            clip(),
          ],
        ),
      ),
    );
  }
}
