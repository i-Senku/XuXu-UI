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
  /// Set MainAxisAlignment 
  /// 
  /// default [MainAxisAlignment.start]
  ///
  XuHStack mainAxis(MainAxisAlignment mainAlignment) => this.._mainAxisAlignment = mainAlignment;

  ///
  /// Set CrossAxisAlignment
  /// 
  /// default [CrossAxisAlignment.center]
  ///
  XuHStack crossAxis(CrossAxisAlignment crossAlignment) => this.._crossAxisAlignment = crossAlignment;

  ///
  ///Set MainAxisSize
  ///
  ///default [MainAxisSize.max]
  ///
  XuHStack size(MainAxisSize mainSize) => this.._mainAxisSize = mainSize;
  
  ///
  ///Set VerticalDirection
  ///
  ///default [VerticalDirection.down]
  ///
  XuHStack direction(VerticalDirection vdirection) => this.._verticalDirection = vdirection;

  ///
  /// Set TextDirection.
  /// 
  XuHStack textDirection(TextDirection textDirection) => this.._textDirection = textDirection;

  ///
  /// Set TextBaseline
  ///
  /// A horizontal line used for aligning text.
  ///
  XuHStack baseLine(TextBaseline line) => this.._textBaseline = line;

  ///
  /// a vertical space for widgets. default [space  = 0.0]
  /// 
  /// if you don't want widgets to be affected by this. Use unique() method
  /// 
  /// Example
  /// 
  /// Widget.unique()
  ///
  XuHStack space(double space) => this.._space = space;

  ///
  /// a background color for widgets
  /// 
  /// if you don't want widgets to be affected by this. Use unique() method
  /// 
  /// Example
  /// 
  /// Widget.unique()
  ///
  XuHStack bgColor(Color color) => this.._background = color;

}