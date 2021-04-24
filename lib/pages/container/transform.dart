import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

Widget transform() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Text("transform: Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度"),
        Container(
          margin: EdgeInsets.all(50),
          color: Colors.black,
          child: Transform(
            // alignment: Alignment.topRight,//相对于坐标系原点的对齐方式
            transform: Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.deepOrange,
              child: Text("Apartment for rent!"),
            ),
          ),
        ),
        Divider(),
        Text(" offset: Offset(-10, -5),//默认原点为左上角，左移20像素，向上平移5像素"),
        DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            //默认原点为左上角，左移20像素，向上平移5像素
            child: Transform.translate(
              offset: Offset(-10, -5),
              child: Text("Hello world"),
            )),
        Divider(
          height: 50,
        ),
        Text("angle: math.pi / 2//旋转90度"),
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
          child: Transform.rotate(
            //旋转90度
            angle: math.pi / 2,
            // 注意：要使用math.pi需先进行如下导包。
            // import 'dart:math' as math;
            child: Text("Hello world"),
          ),
        ),
        Divider(
          height: 50,
        ),
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
          child: Transform.scale(
            scale: 1.5,
            child: Text("Hello world"),
          ),
        ),
        Divider(),
        Text("绘制时放大"),
        // 由于第一个Text应用变换(放大)后，其在绘制时会放大，但其占用的空间依然为红色部分，所以第二个Text会紧挨着红色部分，最终就会出现文字重合
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                child: Transform.scale(scale: 1.5, child: Text("Hello world"))),
            Text(
              "你好",
              style: TextStyle(color: Colors.green, fontSize: 18.0),
            )
          ],
        ),
        Divider(),
        // RotatedBox的变换是在layout阶段，会影响在子组件的位置和大小。
        Text("RotatedBox的变换是在layout阶段，会影响在子组件的位置和大小"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              //将Transform.rotate换成RotatedBox

              child: RotatedBox(
                quarterTurns: 1, //旋转90度(1/4圈)
                child: Text("Hello world"),
              ),
            ),
            Text(
              "你好",
              style: TextStyle(color: Colors.green, fontSize: 18.0),
            )
          ],
        ),
      ],
    ),
  );
}
