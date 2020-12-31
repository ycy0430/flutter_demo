import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget stack() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(width: 1)),
          width: double.infinity,
          height: 500,
          child: Stack(
            alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
            children: <Widget>[
              Container(
                child:
                    Text("Hello world", style: TextStyle(color: Colors.white)),
                color: Colors.red,
              ),
              Positioned(
                left: 18.0,
                child: Text("I am Jack"),
              ),
              Positioned(
                top: 18.0,
                child: Text("Your friend"),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
            "由于第二个子文本组件没有定位，所以fit属性会对它起作用，就会占满Stack。由于Stack子元素是堆叠的，所以第一个子文本组件被第二个遮住了，而第三个在最上层，所以可以正常显示"),
        Container(
          // 由于第二个子文本组件没有定位，所以fit属性会对它起作用，就会占满Stack。由于Stack子元素是堆叠的，所以第一个子文本组件被第二个遮住了，而第三个在最上层，所以可以正常显示
          decoration: BoxDecoration(border: Border.all(width: 1)),
          width: double.infinity,
          height: 500,
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand, //未定位widget占满Stack整个空间
            children: <Widget>[
              Positioned(
                left: 18.0,
                child: Text("I am Jack"),
              ),
              Container(
                child:
                    Text("Hello world", style: TextStyle(color: Colors.white)),
                color: Colors.red,
              ),
              Positioned(
                top: 18.0,
                child: Text("Your friend"),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
