

import 'package:flutter/material.dart';

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
