import 'package:flutter/widgets.dart';
import 'package:xuxu_ui/src/builder/builder.dart';
import 'package:xuxu_ui/src/extensions/padding.dart';
import 'package:xuxu_ui/src/widgets/xubox/xubox.dart';
import 'package:xuxu_ui/xuxu_ui.dart';

class XuHStack extends XuBuilder<Widget> {

  List<Widget> _children;
  Color _background;
  double _space = 0.0;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.center;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  VerticalDirection _verticalDirection = VerticalDirection.down;
  TextBaseline _textBaseline;
  TextDirection _textDirection;

  XuHStack(List<Widget> children){
    this._children = children;
  }

  @override
  Widget create({Key key}) {
    this._children = this._children.map((e) => e.key == null ? XuBox(child: e).color(_background).create().paddingOnly(right: _space) : e).toList();
    return Row(
      key: key,
      mainAxisAlignment: _mainAxisAlignment,
      crossAxisAlignment: _crossAxisAlignment,
      mainAxisSize: _mainAxisSize,
      verticalDirection: _verticalDirection,
      textDirection: _textDirection,
      textBaseline: _textBaseline,
      children: _children,
    );
  }

  ///
  /// How the children should be placed along the main axis in a flex layout.
  ///
  XuHStack mainAxis(MainAxisAlignment mainAlignment) => this.._mainAxisAlignment = mainAlignment;

  ///
  /// How the children should be placed along the cross axis in a flex layout.
  ///
  XuHStack crossAxis(CrossAxisAlignment crossAlignment) => this.._crossAxisAlignment = crossAlignment;

  ///
  /// How much space should be occupied in the main axis. During a flex layout, available space along the main axis is allocated to children. After allocating space, there might be some remaining free space. This value controls whether to maximize or minimize the amount of free space, subject to the incoming layout constraints.
  ///
  XuHStack size(MainAxisSize mainSize) => this.._mainAxisSize = mainSize;
  
  ///
  ///A direction in which boxes flow vertically.
  ///
  XuHStack direction(VerticalDirection vdirection) => this.._verticalDirection = vdirection;

  ///
  ///A direction in which text flows.Some languages are written from the left to the right (for example, English, Tamil, or Chinese), while others are written from the right to the left (for example Aramaic, Hebrew, or Urdu). Some are also written in a mixture, for example Arabic is mostly written right-to-left, with numerals written left-to-right.
  ///
  XuHStack textDirection(TextDirection textDirection) => this.._textDirection = textDirection;

  ///
  ///A horizontal line used for aligning text
  ///
  XuHStack baseLine(TextBaseline line) => this.._textBaseline = line;

  ///
  /// Creates space between widgets between main alignment
  ///
  XuHStack space(double space) => this.._space = space;

  ///
  /// Assigns a background color for each widget created.
  ///
  XuHStack bgColor(Color color) => this.._background = color;

}