import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget flex() {
  return Column(
    children: [
      Column(
        children: <Widget>[
          //Flex的两个子widget按1：2来占据水平空间
          Text("Flex的两个子widget按1：2来占据水平空间"),
          Flex(
            //弹性布局的方向
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 30.0,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 30.0,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Divider(),
          Text("Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间"),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              height: 100.0,
              //Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 30.0,
                      color: Colors.red,
                    ),
                  ),
                  // Spacer创建一个可调整的空间隔，可用于调整Flex容器（如行或列）中窗口小部件之间的间距
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30.0,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
