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
      body: XuListBuilder(
        itemBuilder: (context, index) => XuText("Ercan")
            .color(Colors.red)
            .fontWeight(FontWeight.bold)
            .create()
            .paddingAll(8),
      ).count(5).create(),
    );
  }
}
