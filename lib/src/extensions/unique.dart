import 'package:flutter/widgets.dart';
import 'package:xuxu_ui/src/widgets/xubox/xubox.dart';

extension Difference on Widget {
  unique() => XuBox(child: this).create(key: UniqueKey());
}