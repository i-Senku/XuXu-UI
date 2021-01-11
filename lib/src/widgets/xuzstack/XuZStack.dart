import 'package:flutter/material.dart';
import 'package:xuxu_ui/src/builder/builder.dart';
import 'package:xuxu_ui/src/widgets/xubox/xubox.dart';

class XuZStack extends XuBuilder{

  ///
  /// Creates a stack layout widget.
  ///
  /// By default, the non-positioned children of the stack are aligned by their top left corners.
  ///
  XuZStack(this.children);
  List<Widget> children;


  AlignmentGeometry _alignment = AlignmentDirectional.topStart;
  Overflow _overflow = Overflow.clip;
  Clip _clipBehavior = Clip.hardEdge;
  StackFit _fit = StackFit.loose;
  TextDirection _textDirection;
  Color _backgroundColor;

  @override
  Widget create({Key key}) {
    return XuBox(
      child: Stack(
      key: key,
      children: children,
      alignment: _alignment,
      overflow: _overflow,
      clipBehavior: _clipBehavior,
      fit: _fit,
      textDirection: _textDirection,
    )).color(_backgroundColor).create();
  }

  ///
  /// Defaults to [AlignmentDirectional.topStart].
  ///
  XuZStack alignment(AlignmentGeometry alignment) => this.._alignment = alignment;

  ///
  /// Whether overflowing children should be clipped.
  ///
  /// Defaults to [Overflow.clip].
  ///
  XuZStack overflow(Overflow overflow) => this.._overflow = overflow;

  ///
  /// Defaults to [Clip.hardEdge].
  ///
  XuZStack clip(Clip clip) => this.._clipBehavior = clip;

  ///
  /// The constraints passed into the [Stack] from its parent are either loosened ([StackFit.loose]) or tightened to their biggest size ([StackFit.expand]).
  ///
  XuZStack fit(StackFit fit) => this.._fit = fit;

  ///
  /// The text direction with which to resolve [alignment].
  /// 
  /// Defaults to the ambient [Directionality].
  ///
  XuZStack textDirection(TextDirection textDirection) => this.._textDirection = textDirection;

  ///
  /// Set background color
  ///
  XuZStack bgColor(Color color) => this.._backgroundColor = color;

}