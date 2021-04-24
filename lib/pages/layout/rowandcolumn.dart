import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget rowAndColumn() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Column(
          //测试Row对齐方式，排除Column默认居中对齐的干扰
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              // 主轴居中
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(" 主轴居中 "),
                Text(" mainAxisAlignment"),
              ],
            ),
            Row(
              //表示Row在主轴(水平)方向占用的空间 默认是max
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(" mainAxisSize "),
                Text("  MainAxisSize.min "),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // 表示水平方向子组件的布局顺序(是从左往右还是从右往左)
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text("子组件的布局顺序 "),
                Text(" textDirection "),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // verticalDirection：表示Row纵轴（垂直）的对齐方向
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                Text(
                  " verticalDirection ",
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(" Row轴对齐方向 "),
              ],
            ),
          ],
        ),
        Divider(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("hi"),
            Text("Column"),
          ],
        ),
        Divider(),
      ],
    ),
  );
}
