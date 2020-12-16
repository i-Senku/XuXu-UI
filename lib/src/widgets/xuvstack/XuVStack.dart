import 'package:flutter/widgets.dart';
import 'package:xuxu_ui/src/builder/builder.dart';
import 'package:xuxu_ui/src/extensions/padding.dart';
import 'package:xuxu_ui/src/widgets/xubox/xubox.dart';
import 'package:xuxu_ui/xuxu_ui.dart';

class XuVStack extends XuBuilder<Widget> {

  List<Widget> _children;
  Color _background;
  double _space = 0.0;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.center;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  VerticalDirection _verticalDirection = VerticalDirection.down;
  TextBaseline _textBaseline;
  TextDirection _textDirection;

  XuVStack(List<Widget> children){
    this._children = children;
  }

  @override
  Widget create({Key key}) {
    this._children = this._children.map((e) => e.key == null ? XuBox(child: e).color(_background).create().paddingOnly(bottom: _space) : e).toList();
    return Column(
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

  XuVStack mainAxis(MainAxisAlignment mainAlignment) => this.._mainAxisAlignment = mainAlignment;

  XuVStack crossAxis(CrossAxisAlignment crossAlignment) => this.._crossAxisAlignment = crossAlignment;

  XuVStack size(MainAxisSize mainSize) => this.._mainAxisSize = mainSize;

  XuVStack direction(VerticalDirection vdirection) => this.._verticalDirection = vdirection;

  XuVStack textDirection(TextDirection textDirection) => this.._textDirection = textDirection;

  XuVStack baseLine(TextBaseline line) => this.._textBaseline = line;

  XuVStack space(double space) => this.._space = space;

  XuVStack backgroundColor(Color color) => this.._background = color;


}