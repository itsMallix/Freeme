import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: ColorSystem.neutral_white,
          ),
        ),
        backgroundColor: ColorSystem.primary_darkPurple,
        title: Text(
          "Sign In Account",
          style: TypographySystem.heading2.copyWith(
            color: ColorSystem.neutral_white,
          ),
        ),
      ),
    );
  }
}
