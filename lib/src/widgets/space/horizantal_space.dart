import 'package:flutter/material.dart';

///
/// A horizontal SizedBox
/// 
/// Example
/// 
/// ```dart
/// SpaceH(8.0)
/// ```
///
class SpaceH extends StatelessWidget {
  final double width;

  const SpaceH(this.width) : super();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
