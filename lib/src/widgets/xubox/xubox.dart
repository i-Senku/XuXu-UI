import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xuxu_ui/src/builder/builder.dart';
import 'package:xuxu_ui/src/mixins/colors.dart';
import 'package:xuxu_ui/xuxu_ui.dart';

class XuBox extends XuBuilder<Widget> with ColorsMix<XuBox>{
  
  double _width;
  double _height;
  Widget _child;
  EdgeInsetsGeometry _margin;
  EdgeInsetsGeometry _padding;
  XuBoxDecoration _boxDecoration = XuBoxDecoration();
  Clip _clip;
  AlignmentGeometry _alignment;
  BoxConstraints _constraints;

  XuBox({Widget child}){
    this._child = child;
    setupColor(this);
  }

  ///
  ///Creat a widget
  ///
  @override
  Widget create({Key key}) {
    return Container(
      key: key,
      width: _width,
      height: _height,
      color: this.clr,
      child: _child,
      clipBehavior: _clip ?? Clip.none,
      alignment: _alignment,
      margin: _margin,
      padding: _padding,
      constraints: _constraints,
      decoration: this.clr == null ?  _boxDecoration.create() : null,
    );
  }

  ///
  ///The height and width values include the padding.
  ///
  XuBox size({double width, double height}) => this.._width = width.._height = height;

  ///
  /// Defaults to [Clip.none]. Must be [Clip.none] if [decoration] is null.
  ///
  /// If a clip is to be applied, the [Decoration.getClipPath] method
  /// for the provided decoration must return a clip path. (This is not
  /// supported by all decorations; the default implementation of that
  /// method throws an [UnsupportedError].)
  /// 
  XuBox clip(Clip clip) => this.._clip = clip;

  /// Align the [child] within the XuBox.
  ///
  /// If non-null, the XuBox will expand to fill its parent and position its
  /// child within itself according to the given value. If the incoming
  /// constraints are unbounded, then the child will be shrink-wrapped instead.
  ///
  /// Ignored if [child] is null.
  XuBox alignment(AlignmentGeometry alignment) => this.._alignment = alignment; 

  ///
  ///The decoration to paint behind the [child].
  ///
  XuBox decoration(XuBoxDecoration decoration) => this.._boxDecoration = decoration;

  ///
  ///Immutable layout constraints for [RenderBox] layout.
  ///
  XuBox constraints(BoxConstraints ct)=> this.._constraints = ct;
  
  ///
  /// Empty space to surround the [decoration] and [child].
  ///
  XuBox marginAll({double all = 8.0}) => this.._margin = EdgeInsets.all(all);
  ///
  /// Empty space to surround the [decoration] and [child].Creates insets with only the given values non-zero.
  ///
  XuBox marginOnly({double left = 0.0,double right = 0.0,double top = 0.0,double bottom = 0.0}) => this.._margin = EdgeInsets.only(left: left,right:right,top: top,bottom: bottom);
  
  /// 
  /// Empty space to inscribe inside the [decoration]. The [child], if any, is
  /// placed inside this padding.
  ///
  XuBox paddingAll({double all = 8.0}) => this.._padding = EdgeInsets.all(all);
  
  /// 
  /// Empty space to inscribe inside the [decoration]. The [child], if any, is
  /// placed inside this padding.
  ///
  XuBox paddingOnly({double left = 0.0,double right = 0.0,double top = 0.0,double bottom = 0.0}) => this.._padding = EdgeInsets.only(left: left,right:right,top: top,bottom: bottom);
}
