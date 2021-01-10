

import 'package:flutter/material.dart';

///
/// A vertical SizedBox
/// 
/// Example
/// 
/// ```dart
/// SpaceV(8.0)
/// ```
///
class SpaceV extends StatelessWidget {
  final double height;

  const SpaceV(this.height) : super();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
