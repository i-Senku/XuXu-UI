import 'package:flutter/material.dart';
import 'package:xuxu_ui/src/builder/decoration_builder.dart';

class XuBoxDecoration extends XuDecorationBuilder<BoxDecoration> {
  Color _color;
  BorderRadius _borderRadius;
  LinearGradient _linearGradient;
  BoxShape _shape = BoxShape.rectangle;
  BlendMode _backgroundBlendMode;
  BoxBorder _border;
  List<BoxShadow> _boxShadow;
  DecorationImage _image;

  @override
  BoxDecoration create() {
    return BoxDecoration(
        color: _color,
        borderRadius: _borderRadius,
        gradient: _linearGradient,
        shape: _shape,
        backgroundBlendMode: _backgroundBlendMode,
        border: _border,
        boxShadow: _boxShadow,
        image: _image
        );
  }

  XuBoxDecoration color(Color color) => this.._color = color;
  XuBoxDecoration radiusAll({double radius = 8.0}) =>
      this.._borderRadius = BorderRadius.circular(radius);
  XuBoxDecoration radiusOnly({
    double topLeft = 0.0,
    double topRight = 0.0,
    double bottomLeft = 0.0,
    double bottomRight = 0.0,
  }) =>
      this
        .._borderRadius = BorderRadius.only(
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
            topLeft: Radius.circular(topLeft),
            topRight: Radius.circular(topRight));

  XuBoxDecoration linearGradient(
          List<Color> colors,{
          AlignmentGeometry begin = Alignment.centerLeft,
          AlignmentGeometry end = Alignment.centerRight}) =>
      this.._linearGradient = LinearGradient(begin: begin,end: end,colors: colors);

  XuBoxDecoration shape(BoxShape shape) => this.._shape = shape;
  XuBoxDecoration backgroundBlendMode(BlendMode blendMode) => this.._backgroundBlendMode = blendMode;
  XuBoxDecoration border(BoxBorder border) => this.._border = border;
  XuBoxDecoration boxShadow(List<BoxShadow> boxShadow) => this.._boxShadow = boxShadow;
  XuBoxDecoration image(DecorationImage image) => this.._image = image;

}
