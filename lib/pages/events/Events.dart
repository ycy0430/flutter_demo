import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/events/GestureDetector.dart';
import 'package:flutter_demo/pages/events/GestureRecognizer.dart';
import 'package:flutter_demo/pages/events/Notification.dart';
import 'package:flutter_demo/pages/events/eventbus.dart';
import 'package:flutter_demo/pages/events/listener.dart';

class EventsPage extends StatefulWidget {
  EventsPage({Key key}) : super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  final tabs = {
    '原始指针事件处理': Listenerpage(),
    'GestureDetector': GestureDetectorPage(),
    'GestureRecognizer': GestureRecognizerPage(),
    '事件总线': EventbusPage(),
    'Notification': NotificationPage(),
  };
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(vsync: this, length: tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          isScrollable: true,
          controller: _controller,
          tabs: tabs.keys
              .map((item) => Tab(
                    text: item,
                  ))
              .toList(),
        ),
        
      ),
      body: TabBarView(
         physics: NeverScrollableScrollPhysics(),

          controller: _controller,
          //内容区域，个数、位置需要对应
          children: tabs.keys
              .map((item) => tabs[item])
              .toList(),
        ),
    );
  }
}
