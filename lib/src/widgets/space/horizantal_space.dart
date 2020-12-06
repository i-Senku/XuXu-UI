import 'package:flutter/material.dart';

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
