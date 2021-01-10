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
  int sayi = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: XuVStack([
          XuBox()
              .decoration(XuBoxDecoration().radiusAll().color(Colors.red))
              .marginOnly(left: 10, top: 20)
              .size(height: 300, width: 300)
              .create()
        ]).crossAxis(CrossAxisAlignment.center).create());
  }
}
