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
      decoration: this.color == null ?  _boxDecoration.create() : null,
    );
  }

  XuBox size({double width, double height}) => this.._width = width.._height = height;
  XuBox clip(Clip clip) => this.._clip = clip;
  XuBox alignment(AlignmentGeometry alignment) => this.._alignment = alignment; 
  XuBox decoration(XuBoxDecoration  decoration) => this.._boxDecoration = decoration;
  XuBox constraints(BoxConstraints ct)=> this.._constraints = ct;


}
