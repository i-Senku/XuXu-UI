import 'package:flutter/material.dart';

extension XuGesture on Widget {
  Widget onTap(VoidCallback c, {State state}) {
    return GestureDetector(
        child: this,
        onTap: () {
          if (state == null) {
            c();
          } else {
            state.setState(c);
          }
        });
  }

  Widget onLongPress(VoidCallback c, {State state}) {
    return GestureDetector(
        child: this,
        onLongPress: () {
          if (state == null) {
            c();
          } else {
            state.setState(c);
          }
        });
  }

  Widget onDoubleTap(VoidCallback c, {State state}) {
    return GestureDetector(
        child: this,
        onDoubleTap: () {
          if (state == null) {
            c();
          } else {
            state.setState(c);
          }
        });
  }
}
