import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/plugins/provider/test.dart';
import 'package:flutter_demo/utils/common.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  void add() {
    _count++;
    notifyListeners();
  }

  int get count => _count;
}

class Providerdemo extends StatefulWidget {
  Providerdemo({Key key}) : super(key: key);

  @override
  _ProviderdemoState createState() => _ProviderdemoState();
}

class _ProviderdemoState extends State<Providerdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("测试provider"),
          actions: <Widget>[GoWeb(pluginName: 'Provider')],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ChildOne(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => context
              .read<TestProviderModel>()
              .addNumber(), //使用context.read不会调用rebuild
        ));
  }
}

class ChildOne extends StatefulWidget {
  @override
  _ChildOneState createState() => _ChildOneState();
}

class _ChildOneState extends State<ChildOne> {
  @override
  Widget build(BuildContext context) {
    print("1build");
    return Container(
      child: Text("1number = ${context.watch<TestProviderModel>().number}"),
    );
  }
}
