import 'package:flutter/widgets.dart';
import 'package:xuxu_ui/src/builder/builder.dart';
import 'package:xuxu_ui/src/extensions/padding.dart';
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

  ///
  /// Creat a widget
  ///

  @override
  Widget create({Key key}) {
    this._children = this._children.map((e) => e.key == null ? Container(child: e,color: _background,).paddingOnly(bottom: _space) : e).toList();
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


  ///
  /// Set MainAxisAlignment 
  /// 
  /// default [MainAxisAlignment.start]
  ///
  XuVStack mainAxis(MainAxisAlignment mainAlignment) => this.._mainAxisAlignment = mainAlignment;

  ///
  /// Set CrossAxisAlignment
  /// 
  /// default [CrossAxisAlignment.center]
  ///
  XuVStack crossAxis(CrossAxisAlignment crossAlignment) => this.._crossAxisAlignment = crossAlignment;

  ///
  ///Set MainAxisSize
  ///
  ///default [MainAxisSize.max]
  ///
  XuVStack size(MainAxisSize mainSize) => this.._mainAxisSize = mainSize;

  
  ///
  ///Set VerticalDirection
  ///
  ///default [VerticalDirection.down]
  ///
  XuVStack direction(VerticalDirection vdirection) => this.._verticalDirection = vdirection;

  ///
  /// Set TextDirection.
  /// 
  XuVStack textDirection(TextDirection textDirection) => this.._textDirection = textDirection;

  ///
  /// Set TextBaseline
  ///
  /// A horizontal line used for aligning text.
  ///
  XuVStack baseLine(TextBaseline line) => this.._textBaseline = line;

  ///
  /// a vertical space for widgets. default [space  = 0.0]
  /// 
  /// if you don't want widgets to be affected by this. Use unique() method
  /// 
  /// Example
  /// 
  /// Widget.unique()
  ///
  XuVStack space(double space) => this.._space = space;


  ///
  /// a background color for widgets
  /// 
  /// if you don't want widgets to be affected by this. Use unique() method
  /// 
  /// Example
  /// 
  /// Widget.unique()
  ///
  XuVStack bgColor(Color color) => this.._background = color;


}