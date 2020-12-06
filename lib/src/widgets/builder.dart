import 'package:flutter/widgets.dart';

abstract class XuBuilder<T extends Widget> {
  T create({Key key});
}
