import 'package:flutter/widgets.dart';

extension XuPadding on Widget{
  Widget paddingAll({double all = 8}) => Padding(padding: EdgeInsets.all(all),child: this,);
}