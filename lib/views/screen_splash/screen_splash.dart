import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/views/screen_onBoarding/screen_onBoarding.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => ScreenOnBoarding()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const SizedBox(height: 100),
          Center(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 200,
              width: 200,
              child: SvgPicture.asset("assets/images/logo_app.svg"),
            ),
          ),
          const Spacer(),
          SafeArea(
            child: SizedBox(
              height: 30,
              child: Text(
                "Alright Reserved By Freeme",
                style: TypographySystem.caption
                    .copyWith(color: ColorSystem.neutral_metallicSilver),
              ),
            ),
          )
        ],
      ),
    );
  }
}
