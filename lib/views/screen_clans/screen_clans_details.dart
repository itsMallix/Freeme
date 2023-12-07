import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/model/model_clans/model_clans_join.dart';

class ScreenClansDetail extends StatelessWidget {
  ClanList clanList;
  ScreenClansDetail({super.key, required this.clanList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorSystem.primary_darkPurple,
        leading: const BackButton(
          color: ColorSystem.neutral_white,
        ),
        title: Text(
          "Clans",
          style: TypographySystem.heading2.copyWith(
            color: ColorSystem.neutral_white,
          ),
        ),
      ),
      backgroundColor: ColorSystem.primary_darkPurple,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 230,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 230,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffff60e6),
                          Color(0xffff2264),
                          ColorSystem.primary_darkPurple
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
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
                  // Positioned(child: child)
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                clanList.title,
                style: TypographySystem.subtitle1.copyWith(
                  color: ColorSystem.neutral_white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.abc_rounded,
                              color: ColorSystem.neutral_white,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              clanList.space,
                              style: TypographySystem.caption.copyWith(
                                color: ColorSystem.neutral_metallicSilver,
                              ),
                            )
                          ],
                        ),
                        Text(
                          clanList.space,
                          style: TypographySystem.bodyText2.copyWith(
                            color: ColorSystem.neutral_white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.person,
                              color: ColorSystem.neutral_white,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Clan Leader",
                              style: TypographySystem.caption.copyWith(
                                color: ColorSystem.neutral_metallicSilver,
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Pemimpin Clan",
                          style: TypographySystem.bodyText2.copyWith(
                            color: ColorSystem.neutral_white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2.3,
                      decoration: BoxDecoration(
                        color: ColorSystem.primary_electricIndigo,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        "Undang Teman",
                        style: TypographySystem.subtitle3.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2.3,
                      decoration: BoxDecoration(
                        color: ColorSystem.secondary_ufoGreen,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        "Gabung Clan",
                        style: TypographySystem.subtitle3.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Deskripsi Clan",
                style: TypographySystem.subtitle1
                    .copyWith(color: ColorSystem.neutral_white),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 150,
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: ColorSystem.tertiary_erieBlack,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet",
                  style: TypographySystem.caption.copyWith(
                    color: ColorSystem.neutral_white,
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
