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
        body: Container(
          height: 100,
          width: 100,
          color: Colors.red,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ).paddingAll(),
        ).center());
  }
}
