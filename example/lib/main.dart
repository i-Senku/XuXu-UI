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
        body: Container(
          child: XuVStack([
            XuBox(
            child: XuText("Demo")
                        .fontSize(36)
                        .color(Colors.white)
                        .create()
                        .center()
                        .paddingAll(all: 8)).marginAll()
                .decoration(XuBoxDecoration().color(Colors.red).radiusAll(radius: 36))
                .create()
                .unique()
          ])
              .space(20)
              .bgColor(Colors.green)
              .crossAxis(CrossAxisAlignment.start)
              .create(),
        ));
  }
}
