import 'package:flutter/material.dart';

extension PositionedWidget on Widget {
  
  Widget positioned(
          {Key key,
          double left,
          double top,
          double right,
          double bottom,
          double width,
          double height,
          Widget child}) =>
      Positioned(
        child: this,
        bottom: bottom,
        top: top,
        left: left,
        right: right,
        height: height,
        width: width,
        key: key,
      );

    Widget positionedFill(
          {Key key,
          double left,
          double top,
          double right,
          double bottom,
          Widget child}) =>
      Positioned.fill(
        child: this,
        bottom: bottom,
        top: top,
        left: left,
        right: right,
        key: key,
      );    
}
