import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/model/model_onBoarding/model_onboarding.dart';

class ScreenOnBoarding extends StatefulWidget {
  const ScreenOnBoarding({super.key});

  @override
  State<ScreenOnBoarding> createState() => _ScreenOnBoardingState();
}

class _ScreenOnBoardingState extends State<ScreenOnBoarding> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<OnBoarding> onboardingData = [
    OnBoarding(
      image: "",
      title: "Welcome",
      subtitle: "Freeme",
    ),
    OnBoarding(
      image: "",
      title: "Welcome",
      subtitle: "Freeme",
    ),
    OnBoarding(
      image: "",
      title: "Welcome",
      subtitle: "Freeme",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      appBar: AppBar(
        backgroundColor: ColorSystem.primary_darkPurple,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: TypograhpySystem.subtitle3.copyWith(
                color: ColorSystem.neutral_metallicSilver,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
