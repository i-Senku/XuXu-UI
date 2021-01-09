import 'package:flutter/widgets.dart';

extension XuPadding on Widget{
  Widget paddingAll(double all) => Padding(padding: EdgeInsets.all(all),child: this,);
  Widget paddingOnly({double left = 0.0,double right = 0.0,double top = 0.0,double bottom = 0.0}) => Padding(
    child: this,
    padding: EdgeInsets.only(top: top,bottom: bottom,left: left,right: right),
  );
}