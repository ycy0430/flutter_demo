import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget progress() {
  return Column(
    children: [
      Text("LinearProgressIndicator"),
      // 模糊进度条(会执行一个动画)
      LinearProgressIndicator(
        backgroundColor: Colors.grey[200],
        valueColor: AlwaysStoppedAnimation(Colors.blue),
      ),
      Divider(),
//进度条显示50%
      LinearProgressIndicator(
        backgroundColor: Colors.grey[200],
        valueColor: AlwaysStoppedAnimation(Colors.blue),
        value: .5,
      ),
      Divider(),
      Text("CircularProgressIndicator"),

      // 模糊进度条(会执行一个旋转动画)
      CircularProgressIndicator(
        backgroundColor: Colors.grey[200],
        valueColor: AlwaysStoppedAnimation(Colors.blue),
      ),
      Divider(),

//进度条显示50%，会显示一个半圆
      CircularProgressIndicator(
        backgroundColor: Colors.grey[200],
        valueColor: AlwaysStoppedAnimation(Colors.blue),
        value: .5,
      ),
    ],
  );
}
