import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/HomePage.dart';
import 'package:flutter_demo/pages/plugins/provider/test.dart';
import 'package:flutter_demo/router/routes.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'pages/plugins/provider/demo.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TestProviderModel()),
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BotToastInit(
      child: MaterialApp(
        navigatorObservers: [BotToastNavigatorObserver()],
        home: Scaffold(
          body: HomePage(),
        ),
        routes: routes,
      ),
    );
  }
}
