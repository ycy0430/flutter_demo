
import 'package:flutter_demo/pages/roll/customScrollView.dart';
import 'package:get/get.dart';

import 'pages/HomePage.dart';

class RouteConfig {

//测试
  static final String test = "/test/";
  static final String home = "/home/";

  ///别名映射页面
  static final List<GetPage> getPages = [
    GetPage(name: test, page: () => Testpage()),
    GetPage(name: home, page: () => HomePage()),
  ];

}