import 'package:flutter/material.dart';

Widget buttons() {
  // 滚动组件
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RaisedButton(
          child: Text("normal"),
          onPressed: () {},
        ),
        Divider(),
        FlatButton(
          child: Text("FlatButton"),
          onPressed: () {},
        ),
        Divider(),
        OutlineButton(
          child: Text("OutlineButton"),
          onPressed: () {},
        ),
        Divider(),
        IconButton(
          icon: Icon(Icons.thumb_up),
          onPressed: () {},
        ),
        Divider(),
        RaisedButton.icon(
          icon: Icon(Icons.send),
          label: Text("发送"),
          onPressed: () {},
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text("添加"),
          onPressed: () {},
        ),
        FlatButton.icon(
          icon: Icon(Icons.info),
          label: Text("详情"),
          onPressed: () {},
        ),
        Divider(),
        RaisedButton(
          // 背景色
          color: Colors.blue,
          //按下后的颜色
          highlightColor: Colors.red[700],
          // 文字颜色 亮色还是暗色
          colorBrightness: Brightness.dark,
          // 水波颜色
          splashColor: Colors.yellow,
          child: Text("自定义按钮"),
          // 外形
          shape:
              // 圆角矩形
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          onPressed: () {},
        ),
      ],
    ),
  );
}
