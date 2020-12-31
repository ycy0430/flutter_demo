import 'package:flutter/material.dart';
import 'package:drag_list/drag_list.dart';
import 'package:flutter_demo/utils/common.dart';

class DragListDemo extends StatefulWidget {
  DragListDemo({Key key}) : super(key: key);

  @override
  _DragListDemoState createState() => _DragListDemoState();
}

class _DragListDemoState extends State<DragListDemo> {
  List<String> data = ['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drag_list"),
        actions: <Widget>[GoWeb(pluginName: 'drag_list')],
      ),
      body: Column(
        children: <Widget>[
          ListTile(title: Text('纵向')),
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            child: DragList<String>(
              items: data,
              itemExtent: 72.0,
              itemBuilder: (context, item, handle) {
                return Container(
                  height: 72.0,
                  child: Row(children: [
                    Spacer(),
                    Text(item.value),
                    Spacer(),
                    handle,
                  ]),
                );
              },
            ),
          ),
          ListTile(title: Text('横向+自定义拖动点组件+修改源数据')),
          Container(
            height: 100,
            // ignore: missing_required_param
            child: DragList<String>(
              items: data,
              itemExtent: 100,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, item, handle) {
                return Container(
                  height: 100.0,
                  width: 100,
                  child: Row(children: [
                    Spacer(),
                    Text(item.value),
                    Spacer(),
                    handle,
                  ]),
                );
              },
              handleBuilder: (_) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Icon(Icons.arrow_forward),
                );
              },
              onItemReorder: (from, to) {
                var temp = data[from];
                data[from] = data[to];
                data[to] = temp;
                setState(() {});
              },
            ),
          ),
          Center(
            child: Text(data.toString()),
          ),
        ],
      ),
    );
  }
}
