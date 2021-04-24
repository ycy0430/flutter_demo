import 'package:flutter/material.dart';

Widget imgAndIcon() {
  // 滚动组件
  var img = AssetImage("images/avatar.png");

  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.accessible,
              color: Colors.green,
            ),
            Icon(
              Icons.error,
              color: Colors.green,
            ),
            Icon(
              Icons.fingerprint,
              color: Colors.green,
            ),
          ],
        ),
        //   const Image({
        //   ...
        //   this.width, //图片的宽
        //   this.height, //图片高度
        //   this.color, //图片的混合色值
        //   this.colorBlendMode, //混合模式
        //   this.fit,//缩放模式
        //   this.alignment = Alignment.center, //对齐方式
        //   this.repeat = ImageRepeat.noRepeat, //重复方式
        //   ...
        // })
        // 本地加载图片的两种方式
        Row(
          children: [
            Image(
              image: AssetImage("images/avatar.png"),
              width: 100.0,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              "images/avatar.png",
              width: 100.0,
            ),
            Text("加载本地图片的两种方式"),
          ],
        ),
        Row(
          children: [
            Image(
              image: NetworkImage(
                  "https://www.gkoudai.com/image/ic_code_default.560cb1947ea4bee2ad426e1d5330ace3.png"),
              width: 100.0,
            ),
            SizedBox(
              width: 10,
            ),
            Image.network(
              "https://www.gkoudai.com/image/ic_code_default.560cb1947ea4bee2ad426e1d5330ace3.png",
              width: 100.0,
            ),
            Text("加载网络图片的两种方式"),
          ],
        ),
        Divider(),
        Text("混合模式"),
        Image(
          image: AssetImage("images/avatar.png"),
          width: 100.0,
          color: Colors.blue,
          colorBlendMode: BlendMode.difference,
        ),
        Divider(),
        Text("图片重复"),

        Image(
          image: AssetImage("images/avatar.png"),
          width: 100.0,
          height: 200.0,
          repeat: ImageRepeat.repeatY,
        ),
        Divider(),

        Column(
            children: <Image>[
          Image(
            image: img,
            height: 50.0,
            width: 100.0,
            fit: BoxFit.fill,
          ),
          Image(
            image: img,
            height: 50,
            width: 50.0,
            fit: BoxFit.contain,
          ),
          Image(
            image: img,
            width: 100.0,
            height: 50.0,
            fit: BoxFit.cover,
          ),
          Image(
            image: img,
            width: 100.0,
            height: 50.0,
            fit: BoxFit.fitWidth,
          ),
          Image(
            image: img,
            width: 100.0,
            height: 50.0,
            fit: BoxFit.fitHeight,
          ),
          Image(
            image: img,
            width: 100.0,
            height: 50.0,
            fit: BoxFit.scaleDown,
          ),
          Image(
            image: img,
            height: 50.0,
            width: 100.0,
            fit: BoxFit.none,
          ),
          Image(
            image: img,
            width: 100.0,
            color: Colors.blue,
            colorBlendMode: BlendMode.difference,
            fit: BoxFit.fill,
          ),
          Image(
            image: img,
            width: 100.0,
            height: 200.0,
            repeat: ImageRepeat.repeatY,
          )
        ].map((e) {
          return Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 100,
                  child: e,
                ),
              ),
              Text(e.fit.toString())
            ],
          );
        }).toList()),
      ],
    ),
  );
}
