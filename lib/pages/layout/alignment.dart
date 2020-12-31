import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget alignment() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Text("alignment: Alignment.topRight,"),
        Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: Align(
            alignment: Alignment.topRight,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
        Divider(),
        Text(
            "widthFactor和heightFactor是用于确定Align 组件本身宽高的属性；它们是两个缩放因子，会分别乘以子元素的宽、高，最终的结果就是Align 组件的宽高"),
        Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: Align(
            // widthFactor和heightFactor是用于确定Align 组件本身宽高的属性；它们是两个缩放因子，会分别乘以子元素的宽、高，最终的结果就是Align 组件的宽高
            widthFactor: 2,
            heightFactor: 2,
            alignment: Alignment.topRight,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
        Divider(),
        Text("   alignment: Alignment(-1.0, 1.0) 偏移"),
        Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: Align(
            // widthFactor和heightFactor是用于确定Align 组件本身宽高的属性；它们是两个缩放因子，会分别乘以子元素的宽、高，最终的结果就是Align 组件的宽高
            widthFactor: 2,
            heightFactor: 2,
            // 偏移
            alignment: Alignment(-1.0, 1.0),
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
        Divider(),
        Text("Center widthFactor或heightFactor为null时组件的宽高将会占用尽可能多的空间"),
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
          child: Center(
            child: Text("xxx"),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
          child: Center(
            widthFactor: 1,
            heightFactor: 1,
            child: Text("xxx"),
          ),
        ),
      ],
    ),
  );
}
