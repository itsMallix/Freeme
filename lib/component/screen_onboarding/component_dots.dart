import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'dart:math' as math;

class DotIndicator extends StatelessWidget {
  final bool isActive;
  const DotIndicator({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(math.pi / 4),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: isActive
              ? ColorSystem.gradient_icterineBeer
              : ColorSystem.gradient_blindDark,
        ),
        child: Container(
          alignment: Alignment.center,
          height: isActive ? 13 : 10,
          width: isActive ? 13 : 10,
        ),
      ),
    );
  }
}
