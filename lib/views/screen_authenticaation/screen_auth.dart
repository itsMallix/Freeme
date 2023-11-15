import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'dart:math' as math;

import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/views/screen_authenticaation/screen_signIn.dart';
import 'package:freeme/views/screen_authenticaation/screen_signUp.dart';

class ScreenAuth extends StatelessWidget {
  const ScreenAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150),
            SizedBox(
              width: 200,
              child: SvgPicture.asset("assets/images/logo_app_white.svg"),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenSignIn(),
                  ),
                );
              },
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(math.pi / 4),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: ColorSystem.primary_darkPurple,
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: ColorSystem.primary_darkPurple,
                        width: 5,
                      ),
                    ),
                    gradient: ColorSystem.gradient_icterineBeer,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: ColorSystem.primary_pastelOrange),
                    ),
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(-math.pi / 4),
                      child: Text(
                        "Sign In",
                        style: TypographySystem.subtitle1.copyWith(
                          color: ColorSystem.primary_darkPurple,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenSignUp(),
                  ),
                );
              },
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(math.pi / 4),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: ColorSystem.primary_darkPurple,
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: ColorSystem.primary_darkPurple,
                        width: 5,
                      ),
                    ),
                    gradient: ColorSystem.gradient_icterineBeer,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: ColorSystem.primary_pastelOrange),
                    ),
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(-math.pi / 4),
                      child: Text(
                        "Sign Up",
                        style: TypographySystem.subtitle1.copyWith(
                          color: ColorSystem.primary_darkPurple,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
