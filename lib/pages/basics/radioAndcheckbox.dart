import 'package:flutter/material.dart';

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  @override
  _SwitchAndCheckBoxTestRouteState createState() =>
      new _SwitchAndCheckBoxTestRouteState();
}

class _SwitchAndCheckBoxTestRouteState
    extends State<SwitchAndCheckBoxTestRoute> {
  bool _switchSelected = true; //维护单选开关状态
  String selected;
  String selected1;
  bool _checkboxSelected = true; //维护复选框状态

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selected = _switchSelected ? "开" : "关";
    selected1 = _checkboxSelected ? "选中" : "未选中";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Text("Switch"),
            Switch(
              value: _switchSelected, //当前状态
              onChanged: (value) {
                //重新构建页面
                setState(() {
                  _switchSelected = value;
                  selected = _switchSelected ? "开" : "关";
                });
              },
            ),
            Text(selected),
          ],
        ),
        Row(
          children: [
            Text("Checkbox"),
            Checkbox(
              value: _checkboxSelected,
              activeColor: Colors.red, //选中时的颜色
              onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;
                  selected1 = _checkboxSelected ? "选中" : "未选中";
                });
              },
            ),
            Text(selected1),
          ],
        ),
      ],
    );
  }
}
