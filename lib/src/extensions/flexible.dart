import 'package:flutter/material.dart';

extension XuFlexible on Widget {
  Widget flexible({Key key,int flex = 1,FlexFit fit = FlexFit.loose}) => Flexible(
        key:key,
        flex: flex,
        fit: fit,
        child: this,
      );
}
