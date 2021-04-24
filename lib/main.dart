import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/HomePage.dart';
import 'package:flutter_demo/route.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: RouteConfig.getPages,
      initialRoute: RouteConfig.home,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
