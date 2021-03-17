import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/plugins/dio/newsmodel.dart';
import 'package:flutter_demo/utils/common.dart';
import 'package:dio/dio.dart';


class DioDemo extends StatefulWidget {
  DioDemo({Key key}) : super(key: key);

  @override
  _demoState createState() => _demoState();
}

class _demoState extends State<DioDemo> {

	Dio dio = Dio();
	List<news> datas=[];

	@override
	void initState() {
		super.initState();
		_getdata();
	}

	@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dio"),
        actions: <Widget>[GoWeb(pluginName: 'Dio'),
				],
      ),
      body: ListView.builder(
				itemCount: datas.length,
				itemExtent: 50,
				itemBuilder: (BuildContext context,int index){
					return Text(datas[index].title);
				},
			),
    );
  }

	_getdata() async {
		Response response;

		response = await dio.get(
			"https://api.xiaohuwei.cn/news.php",
		);
		List json = jsonDecode(response.data);
		datas = json.map((e) {
			return news.fromJson(e);
		}).toList();

		initState();
	}
}


