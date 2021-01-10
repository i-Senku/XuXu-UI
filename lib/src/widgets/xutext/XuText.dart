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
      style: _getStyle(),
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

  ///
  /// Set TextAlign. How the text should be aligned horizontally.
  ///
  XuText align(TextAlign textAlign) => this.._textAlign = textAlign;

  ///
  /// Set TextDirection. A direction in which text flows. 
  ///
  XuText direction(TextDirection direction) => this.._textDirection = direction;

  ///
  /// An identifier used to select a user's language and formatting preferences.
  ///
  XuText locale(Locale locale) => this.._locale = locale;

  ///
  ///Whether the text should break at soft line breaks.
  ///
  ///If false, the glyphs in the text will be positioned as if there was unlimited horizontal space.
  ///
  XuText softWrap(bool softWrap) => this.._softWrap = softWrap;

  ///
  ///How visual overflow should be handled.
  ///
  ///Defaults to retrieving the value from the nearest [DefaultTextStyle] ancestor.
  ///
  XuText overflow(TextOverflow overflow) => this.._overflow = overflow;

  /// The number of font pixels for each logical pixel.
  ///
  /// For example, if the text scale factor is 1.5, text will be 50% larger than
  /// the specified font size.
  ///
  /// The value given to the constructor as textScaleFactor. If null, will
  /// use the [MediaQueryData.textScaleFactor] obtained from the ambient
  /// [MediaQuery], or 1.0 if there is no [MediaQuery] in scope.

  XuText textScaleFactor(double textScaleFactor) =>
      this.._textScaleFactor = textScaleFactor;


  /// An optional maximum number of lines for the text to span, wrapping if necessary.
  /// If the text exceeds the given number of lines, it will be truncated according
  /// to [overflow].
  ///
  /// If this is 1, text will not wrap. Otherwise, text will be wrapped at the
  /// edge of the box.
  ///
  /// If this is null, but there is an ambient [DefaultTextStyle] that specifies
  /// an explicit number for its [DefaultTextStyle.maxLines], then the
  /// [DefaultTextStyle] value will take precedence. You can use a [RichText]
  /// widget directly to entirely override the [DefaultTextStyle].
  XuText maxLines(int line) => this.._maxLines = line;

  /// An alternative semantics label for this text.
  ///
  /// If present, the semantics of this widget will contain this value instead
  /// of the actual text. This will overwrite any of the semantics labels applied
  /// directly to the [TextSpan]s.
  XuText semanticsLabel(String semanticsLabel) =>
      this.._semanticsLabel = semanticsLabel;

  ///
  ///Defines how to measure the width of the rendered text.
  ///
  XuText textWidthBasis(TextWidthBasis textWidthBasis) =>
      this.._textWidthBasis = textWidthBasis;

  /// Defines how the paragraph will apply [TextStyle.height] to the ascent of the
  /// first line and descent of the last line.
  ///
  /// Each boolean value represents whether the [TextStyle.height] modifier will
  /// be applied to the corresponding metric. By default, all properties are true,
  /// and [TextStyle.height] is applied as normal. When set to false, the font's
  /// default ascent will be used.
  /// {@endtemplate}
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

  ///
  /// The color to use when painting the text.
  ///
  XuText color(Color color) => this.._color = color;

  ///
  /// The color to use as the background for the text.
  ///
  XuText backgroundColor(Color color) => this.._backgroundColor = color;

  ///
  /// The package argument must be non-null if the font family is defined in a package. It is combined with the fontFamily argument to set the [fontFamily] property.
  ///
  XuText fontFamily(String fontFamily) => this.._fontFamily = fontFamily;

  ///
  /// The size of glyphs (in logical pixels) to use when painting the text.
  ///
  XuText fontSize(double fontSize) => this.._fontSize = fontSize;

  ///
  /// The typeface thickness to use when painting the text (e.g., bold).
  ///
  XuText fontWeight(FontWeight fontWeight) => this.._fontWeight = fontWeight;

  ///
  /// The typeface variant to use when drawing the letters (e.g., italics).
  ///
  XuText fontStyle(FontStyle fontStyle) => this.._fontStyle = fontStyle;

  ///
  /// The amount of space (in logical pixels) to add between each letter. A negative value can be used to bring the letters closer.
  ///
  XuText letterSpacing(double letterSpacing) =>
      this.._letterSpacing = letterSpacing;
  XuText wordSpacing(double wordSpacing) => this.._wordSpacing = wordSpacing;

  ///
  /// The common baseline that should be aligned between this text span and its parent text span, or, for the root text spans, with the line box.
  ///

  XuText textBaseline(TextBaseline textBaseline) =>
      this.._textBaseline = textBaseline;


  ///
  /// The height of this text span, as a multiple of the font size.
  ///
  XuText height(double height) => this.._height = height;


  ///
  /// The locale used to select region-specific glyphs.
  ///
  XuText textLocel(Locale textLocale) => this.._textLocale = textLocale;


  ///
  /// The paint drawn as a foreground for the text.
  ///
  XuText foreground(Paint foreground) => this.._foreground = foreground;


  ///
  /// The paint drawn as a background for the text.
  ///
  XuText background(Paint background) => this.._background = background;


  ///
  /// The decorations to paint near the text (e.g., an underline).
  /// 
  /// Multiple decorations can be applied using [TextDecoration.combine].
  ///

  XuText decoration(TextDecoration decoration) =>
      this.._decoration = decoration;

  ///
  /// The color in which to paint the text decorations.
  ///
  XuText decorationColor(Color decorationColor) =>
      this.._decorationColor = decorationColor;


  ///
  /// The thickness of the decoration stroke as a multiplier of the thickness defined by the font.
  ///

  XuText decorationThickness(double decorationThickness) =>
      this.._decorationThickness = decorationThickness;

  ///
  ///A human-readable description of this text style.
  ///
  ///This property is maintained only in debug builds.
  ///
  XuText debugLabel(String debugLabel) => this.._debugLabel = debugLabel;


  ///
  /// A list of [Shadow]s that will be painted underneath the text.
  ///
  XuText shadows(List<Shadow> shadows) => this.._shadows = shadows;


  ///
  ///A list of [FontFeature]s that affect how the font selects glyphs
  ///
  XuText fontFeatures(List<FontFeature> fontFeatures) =>
      this.._fontFeatures = fontFeatures;

  TextStyle _getStyle() => TextStyle(
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
