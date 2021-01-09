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
        XuText("Ercan").fontSize(36).create().unique(),
        XuText("Ercan").fontSize(36).create(),
        XuText("Ercan").fontSize(36).create(),
      ]).space(15).crossAxis(CrossAxisAlignment.center).bgColor(Colors.red).create()
      );
  }
}

/*
XuVStack([
        XuText("Ercan").create().unique(),
        XuText("Ercan").create(),
        XuText("Ercan").create(),
        XuText("Ercan").create(),
      ]).space(15).crossAxis(CrossAxisAlignment.center).backgroundColor(Colors.red).create()*/
