import 'package:flutter/material.dart';
import 'package:xuxu_ui/xuxu_ui.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: XuVStack([

        XuBox(child: XuText("$number").create()).size(height: 100,width: 100).color(Colors.blue).create().onTap(() {
          number = 50;
        },state: this), // Auto update state
        XuBox(child: XuText("$number").create()).size(height: 100,width: 100).color(Colors.blue).create().onDoubleTap(() {
          number = 100;
        }),
        XuBox(child: XuText("$number").create()).size(height: 100,width: 100).color(Colors.blue).create().onLongPress(() {
          number = 50;
        }),
        
      ]).space(20).create()
    );
  }
}
