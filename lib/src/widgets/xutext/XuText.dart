import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xuxu_ui/src/builder/builder.dart';



class XuText extends XuBuilder<Widget> {
  final String _text;

  XuText(this._text);

  TextAlign _textAlign;
  TextDirection _textDirection;
  Locale _locale;
  bool _softWrap;
  TextOverflow _overflow;
  double _textScaleFactor;
  int _maxLines;
  String _semanticsLabel;
  TextWidthBasis _textWidthBasis;
  TextHeightBehavior _textHeightBehavior;

  @override
  Widget create({Key key}) {
    return Text(
      _text,
      key:key,
      style: getStyle(),
      textAlign: _textAlign,
      textDirection: _textDirection,
      locale: _locale,
      softWrap: _softWrap,
      overflow: _overflow,
      textScaleFactor: _textScaleFactor,
      maxLines: _maxLines,
      semanticsLabel: _semanticsLabel,
      textWidthBasis: _textWidthBasis,
      textHeightBehavior: _textHeightBehavior,
    );
  }

  XuText align(TextAlign textAlign) => this.._textAlign = textAlign;

  XuText direction(TextDirection direction) => this.._textDirection = direction;

  XuText locale(Locale locale) => this.._locale = locale;

  XuText softWrap(bool softWrap) => this.._softWrap = softWrap;

  XuText overflow(TextOverflow overflow) => this.._overflow = overflow;

  XuText textScaleFactor(double textScaleFactor) =>
      this.._textScaleFactor = textScaleFactor;

  XuText maxLines(int line) => this.._maxLines = line;

  XuText semanticsLabel(String semanticsLabel) =>
      this.._semanticsLabel = semanticsLabel;

  XuText textWidthBasis(TextWidthBasis textWidthBasis) =>
      this.._textWidthBasis = textWidthBasis;

  XuText textHeightBehavior(TextHeightBehavior textHeightBehavior) =>
      this.._textHeightBehavior = textHeightBehavior;

  /* 
  @TEXTSTYLES
   */

  Color _color;
  Color _backgroundColor;
  String _fontFamily;
  double _fontSize;
  FontWeight _fontWeight;
  FontStyle _fontStyle;
  double _letterSpacing;
  double _wordSpacing;
  TextBaseline _textBaseline;
  double _height;
  Locale _textLocale;
  Paint _foreground;
  Paint _background;
  TextDecoration _decoration;
  Color _decorationColor;
  TextDecorationStyle _decorationStyle;
  double _decorationThickness;
  String _debugLabel;
  List<Shadow> _shadows;
  List<FontFeature> _fontFeatures;

  XuText color(Color color) => this.._color = color;
  XuText backgroundColor(Color color) => this.._backgroundColor = color;
  XuText fontFamily(String fontFamily) => this.._fontFamily = fontFamily;
  XuText fontSize(double fontSize) => this.._fontSize = fontSize;
  XuText fontWeight(FontWeight fontWeight) => this.._fontWeight = fontWeight;
  XuText fontStyle(FontStyle fontStyle) => this.._fontStyle = fontStyle;
  XuText letterSpacing(double letterSpacing) =>
      this.._letterSpacing = letterSpacing;
  XuText wordSpacing(double wordSpacing) => this.._wordSpacing = wordSpacing;

  XuText textBaseline(TextBaseline textBaseline) =>
      this.._textBaseline = textBaseline;

  XuText height(double height) => this.._height = height;

  XuText textLocel(Locale textLocale) => this.._textLocale = textLocale;

  XuText foreground(Paint foreground) => this.._foreground = foreground;

  XuText background(Paint background) => this.._background = background;

  XuText decoration(TextDecoration decoration) =>
      this.._decoration = decoration;

  XuText decorationColor(Color decorationColor) =>
      this.._decorationColor = decorationColor;

  XuText decorationThickness(double decorationThickness) =>
      this.._decorationThickness = decorationThickness;

  XuText debugLabel(String debugLabel) => this.._debugLabel = debugLabel;

  XuText shadows(List<Shadow> shadows) => this.._shadows = shadows;

  XuText fontFeatures(List<FontFeature> fontFeatures) =>
      this.._fontFeatures = fontFeatures;

  TextStyle getStyle() => TextStyle(
      color: _color,
      backgroundColor: _backgroundColor,
      fontFamily: _fontFamily,
      fontSize: _fontSize,
      fontWeight: _fontWeight,
      fontStyle: _fontStyle,
      letterSpacing: _letterSpacing,
      wordSpacing: _wordSpacing,
      textBaseline: _textBaseline,
      height: _height,
      locale: _textLocale,
      foreground: _foreground,
      background: _background,
      decoration: _decoration,
      decorationColor: _decorationColor,
      decorationStyle: _decorationStyle,
      decorationThickness: _decorationThickness,
      debugLabel: _debugLabel,
      shadows: _shadows,
      fontFeatures: _fontFeatures);
}
