import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextEditingController _unameController = TextEditingController();
TextEditingController _upasswordController = TextEditingController();
FocusNode focusNode1 = new FocusNode();
FocusNode focusNode2 = new FocusNode();
FocusScopeNode focusScopeNode;
Widget inputAndForm(context) {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        TextField(
          focusNode: focusNode1,
          controller: _unameController,
          autofocus: false,
          decoration: InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              prefixIcon: Icon(Icons.person)),
        ),
        TextField(
          focusNode: focusNode2,
          controller: _upasswordController,
          decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock)),
          obscureText: true,
        ),
        RaisedButton(
          onPressed: () {
            print(_unameController.text);
            print(_upasswordController.text);
          },
          child: Text("打印账号密码"),
        ),
        RaisedButton(
          onPressed: () {
            FocusScope.of(context).requestFocus(focusNode2);
          },
          child: Text("移动焦点"),
        ),
        RaisedButton(
          onPressed: () {
            // 当所有编辑框都失去焦点时键盘就会收起
            focusNode1.unfocus();
            focusNode2.unfocus();
          },
          child: Text("隐藏键盘"),
        ),
      ],
    ),
  );
}
