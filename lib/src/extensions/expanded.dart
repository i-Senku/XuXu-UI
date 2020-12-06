import 'package:flutter/material.dart';

extension XuExpanded on Widget {
  Widget expanded({int flex = 1}) => Expanded(
        flex: flex,
        child: this,
      );
}
