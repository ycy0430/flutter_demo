import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget container() {
  return SingleChildScrollView(
    child: Column(children: [
      Container(
        margin: EdgeInsets.only(top: 50.0, left: 120.0), //容器外填充
        constraints:
            BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
        decoration: BoxDecoration(
            //背景装饰
            gradient: RadialGradient(
                //背景径向渐变
                colors: [Colors.red, Colors.orange],
                center: Alignment.topLeft,
                radius: .98),
            boxShadow: [
              //卡片阴影
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0)
            ]),
        transform: Matrix4.rotationZ(.2), //卡片倾斜变换
        alignment: Alignment.center, //卡片内文字居中
        child: Text(
          //卡片文字
          "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
      SizedBox(
        height: 80,
      ),
      Text(" margin: EdgeInsets.all(20.0), //容器外补白"),
      Container(
        margin: EdgeInsets.all(20.0), //容器外补白
        color: Colors.orange,
        child: Text("Hello world!"),
      ),
      Text("padding: EdgeInsets.all(20.0), //容器内补白"),
      Container(
        padding: EdgeInsets.all(20.0), //容器内补白
        color: Colors.orange,
        child: Text("Hello world!"),
      ),
      
    ]),
  );
}
