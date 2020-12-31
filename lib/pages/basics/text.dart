import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget text() {
  return Column(
    //主轴方向开始位置
    mainAxisAlignment: MainAxisAlignment.start,
    //次轴方向开始位置
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "文本对齐方式 " * 6,
        //文本对齐方式
        textAlign: TextAlign.right,
      ),
      Divider(),
      Text(
        "2最大行数. " * 14,
        //最大行数
        maxLines: 2,
        //超出显示省略号
        overflow: TextOverflow.ellipsis,
      ),
      Divider(),
      Text(
        "3缩放",
        //缩放
        textScaleFactor: 2.5,
      ),
      Divider(),
      Text(
        "4颜色大小行高字体背景色下划线装饰",
        //文本样式
        style: TextStyle(
          //颜色
          color: Colors.blue,
          // 大小
          fontSize: 18.0,
          // 行高
          height: 1.5,
          //字体
          fontFamily: "Courier",
          //背景颜色
          background: new Paint()..color = Colors.yellow,
          // 下划线
          decoration: TextDecoration.underline,
          // 下划线样式
          decorationStyle: TextDecorationStyle.double,
        ),
      ),
      Divider(),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(text: "字符串 "),
            TextSpan(
              text: "拼接",
              style: TextStyle(color: Colors.blue),
              //  recognizer: _tapRecognizer
            ),
          ],
        ),
      ),
      Divider(),
      DefaultTextStyle(
        //1.设置文本默认样式
        style: TextStyle(
          color: Colors.red,
          fontSize: 20.0,
        ),
        textAlign: TextAlign.start,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("hello world设置文本默认样式"),
            Text("I am Jack 子类默认继承样式"),
            Text(
              "I am Jack",
              style: TextStyle(
                  inherit: false, //2.不继承默认样式
                  color: Colors.grey),
            ),
          ],
        ),
      ),
    ],
  );
}
