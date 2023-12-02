import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/views/screen_clans/screen_clans_join.dart';

class ScreenClansMain extends StatelessWidget {
  const ScreenClansMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 230,
              width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    height: 230,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/screen_clans/clans_bg_main.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          ColorSystem.primary_darkPurple
                        ],
                        stops: [0, .9],
                      ),
                    ),
                  ),
                  Positioned(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SvgPicture.asset(
                          "assets/images/screen_clans/clans_char.svg"),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 250,
              child: Text(
                "Minta Bantuan Dan Lawan Monster Bersama",
                style: TypographySystem.heading2.copyWith(
                  color: ColorSystem.neutral_white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Mintalah pertolongan jika kamu diserang oleh monster dan kalahkan mereka dengan kekuatan kebersamaan",
                style: TypographySystem.contentText.copyWith(
                  color: ColorSystem.neutral_white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: ColorSystem.primary_electricIndigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenClansJoin(),
                    ),
                  );
                },
                child: Text(
                  "Gabung Clan",
                  style: TypographySystem.heading2.copyWith(
                    color: ColorSystem.neutral_white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  side: const BorderSide(
                    color: ColorSystem.primary_electricIndigo,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: ColorSystem.primary_darkPurple,
                ),
                onPressed: () {},
                child: Text(
                  "Buat Clan",
                  style: TypographySystem.heading2.copyWith(
                    color: ColorSystem.neutral_white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Bergabung atau dirikan clan sendiri untuk saling membantu orang lain demi perubahan yang lebih baik!",
                style: TypographySystem.contentText.copyWith(
                  color: ColorSystem.neutral_white,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
