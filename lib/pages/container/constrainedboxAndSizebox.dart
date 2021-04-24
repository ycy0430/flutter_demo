import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget constrainedboxAndSizebox() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Text('''ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: double.infinity, //宽度尽可能大
              minHeight: 50.0 //最小高度为50像素
              ) '''),
        ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: double.infinity, //宽度尽可能大
              minHeight: 50.0 //最小高度为50像素
              ),
          child: Container(
              height: 5.0,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
              )),
        ),
        Divider(),
        SizedBox(
            width: 80.0,
            height: 80.0,
            child: Container(
                height: 5.0, //无效
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                ))),
        Divider(),
        // 有多重限制时，对于minWidth和minHeight来说，是取父子中相应数值较大的
        Text("有多重限制时，对于minWidth和minHeight来说，是取父子中相应数值较大的"),
        ConstrainedBox(
            constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0), //父
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
              child: Container(
                  height: 5.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.red),
                  )),
            )),
        SizedBox(
          height: 5,
        ),
        ConstrainedBox(
            constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0), //父
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0), //子
              child: Container(
                  height: 5.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.red),
                  )),
            )),
        Divider(),
        Text("UnconstrainedBox “去除”父级限制"),
        ConstrainedBox(
            constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0), //父
            child: UnconstrainedBox(
              //“去除”父级限制
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
                child: Container(
                    height: 5.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.red),
                    )),
              ),
            )),
        AppBar(
          title: Text("!"),
          actions: <Widget>[
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Colors.white70),
              ),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        AppBar(
          title: Text("1"),
          actions: <Widget>[
            UnconstrainedBox(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.white70),
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
