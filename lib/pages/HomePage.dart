import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/basics/Basics.dart';
import 'package:flutter_demo/pages/container/Container.dart';
import 'package:flutter_demo/pages/events/Events.dart';
import 'package:flutter_demo/pages/layout/Layout.dart';
import 'package:flutter_demo/pages/roll/Roll.dart';
import 'package:flutter_demo/pages/test/test.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List listTabs = [
    BasicsPage(),
    // TextPage1(),
    LayoutPage(),
    ContainerPage(),
    RollPage(),
    EventsPage(),
  ];
  String apptitle;
  Map bottonitem = {
    '基础组件': Icons.home,
    '布局类组件': Icons.category,
    '容器类组件': Icons.settings,
    '可滚动组件': Icons.ac_unit_sharp,
    '时间处理与监听': Icons.list_alt_rounded,

  };
  List titlelist = [
    '基础组件',
    '布局类组件',
    '容器类组件',
    '可滚动组件',
    '时间处理与监听',
  ];

  @override
  void initState() {
    super.initState();
    this.currentIndex = 0;
    this.apptitle = titlelist[currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      // appBar: (AppBar(
      //   title: Text(apptitle),
      // )),
      body: this.listTabs[this.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(height: 1.3),
        unselectedLabelStyle: TextStyle(height: 1.3),
        currentIndex: this.currentIndex,
        
        
        iconSize: 30.0,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            this.currentIndex = index;
            this.apptitle = titlelist[currentIndex];
          });
        },
        items: bottonitem.keys
            .map(
              (key) => BottomNavigationBarItem(
                label: key,
                icon: Icon(bottonitem[key]),
              ),
            )
            .toList(),
      ),
    );
  }
}
