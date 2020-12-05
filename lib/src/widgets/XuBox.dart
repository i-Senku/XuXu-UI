import 'package:xuxu_ui/src/widgets/builder.dart';
import 'package:flutter/widgets.dart';

class XuBox extends XuBuilder<Widget>{

  double _width;
  double _height;
  Color _color;

  @override
  Widget create({Key key}) {
    return Container(
      key: key,
      width: _width,
      height: _height,
      color: _color,
    );
  }

  XuBox size({double width = 0.0, double height = 0.0}) => this.._width = width.._height = height;
  XuBox color(Color color) => this.._color = color;

}