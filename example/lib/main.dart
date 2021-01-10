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

        XuBox().size(height: 100,width: 100).create().paddingAll(),
        XuBox().size(height: 100,width: 100).create().paddingOnly(left: 20,right: 20),
        XuBox().size(height: 100,width: 100).create().flexible(),
        XuBox().size(height: 100,width: 100).create().expanded(),
        XuBox().size(height: 100,width: 100).create().center(),

      ]).space(20).create()
    );
  }
}
