import 'package:flutter/widgets.dart';

mixin ColorsMix<T>{
  
  @protected
  Color clr;

  T widget;

  T color(Color color) {
    this.clr = color;
    return widget;
  }

  @protected
  setupColor(T child){
    widget = child;
  }

}