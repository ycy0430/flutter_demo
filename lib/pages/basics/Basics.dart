import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/basics/buttons.dart';
import 'package:flutter_demo/pages/basics/form.dart';
import 'package:flutter_demo/pages/basics/imgAndIcon.dart';
import 'package:flutter_demo/pages/basics/inputandform.dart';
import 'package:flutter_demo/pages/basics/progress.dart';
import 'package:flutter_demo/pages/basics/radioAndcheckbox.dart';
import 'package:flutter_demo/pages/basics/text.dart';

class BasicsPage extends StatefulWidget {
  BasicsPage({Key key}) : super(key: key);

  @override
  _BasicsPageState createState() => _BasicsPageState();
}

//因为需要用到动画 所以  with SingleTickerProviderStateMixin
class _BasicsPageState extends State<BasicsPage>
    with SingleTickerProviderStateMixin {
  //tabbar 控制器
  TabController _controller;
  //tabbar分类集合
  final tabs = [
    '文本、文字样式',
    '按钮',
    '图片和Icon',
    '单选框和复选框',
    '输入框(TextField)',
    '表单(Form)',
    '进度指示器',
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
            text(),
            buttons(),
            imgAndIcon(),
            SwitchAndCheckBoxTestRoute(),
            inputAndForm(context),
            FormTestRoute(),
            progress(),
          ],
        ),
      ),
    );
  }
}
