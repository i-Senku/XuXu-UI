import 'dart:math';

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
      body: XuBox(
        child: XuHStack(
          [
            XuText("Ercan").create(),
            XuText("Ahmet").create(),
            XuText("Deneme Text").create().unique(),
            XuText("asLKDJSADJKLSAd").create()
          ],
        ).space(40).backgroundColor(Colors.yellow).create(),
      ).create().center(),
    );
  }
}
