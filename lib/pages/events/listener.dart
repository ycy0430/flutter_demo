import 'package:flutter/material.dart';

class Listenerpage extends StatefulWidget {
  Listenerpage({Key key}) : super(key: key);

  @override
  _ListenerpageState createState() => _ListenerpageState();
}

class _ListenerpageState extends State<Listenerpage> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(

        child: Listener(
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: 300.0,
            height: 150.0,
            child: Text(_event?.toString() ?? "",
                style: TextStyle(color: Colors.white)),
          ),
          onPointerDown: (PointerDownEvent event) =>
              setState(() => _event = event),
          onPointerMove: (PointerMoveEvent event) =>
              setState(() => _event = event),
          onPointerUp: (PointerUpEvent event) => setState(() => _event = event),
        ),
      )
    ]);
  }
}
