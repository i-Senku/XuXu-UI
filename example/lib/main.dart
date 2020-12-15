import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            XuBox(child: Text("Ercan").paddingOnly(top: 20))
                .setColor(Colors.red)
                .create()
                .center(),
            SizedBox(
              height: 10,
            ),
            VxBox(child: Text("Ercan").pOnly(top: 20))
                .withDecoration(
                  BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      gradient:
                          LinearGradient(colors: [Colors.red, Colors.blue])),
                )
                .make()
                .centered()
          ],
        ));
  }
}
