import 'package:flutter/material.dart';
import 'package:xuxu_ui/xuxu_ui.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: XuText("asdad").color(Colors.red).create().center());
  }

  final text = XuText("asdasd")
      .color(Colors.red)
      .fontSize(14)
      .create()
      .paddingAll()
      .center();
}
