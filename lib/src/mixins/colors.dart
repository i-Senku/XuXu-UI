import 'package:flutter/widgets.dart';

mixin ColorsMix<T>{
  
  @protected
  Color color;

  T widget;

  T setColor(Color color) {
    this.color = color;
    return widget;
  }

  @protected
  setupColor(T child){
    widget = child;
  }

}