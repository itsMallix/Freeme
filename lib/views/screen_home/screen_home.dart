import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: 110,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 10),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: SvgPicture.asset(
                        "assets/images/character/char_1.svg",
                      ),
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.favorite_rounded,
                            color: ColorSystem.negative_fieryRose,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 10,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: ColorSystem.negative_fieryRose,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "100/100",
                                    style: TypographySystem.caption.copyWith(
                                      color: ColorSystem.neutral_white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.23,
                                  ),
                                  Text(
                                    "Nyawa",
                                    style: TypographySystem.caption.copyWith(
                                      color: ColorSystem.neutral_white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: ColorSystem.primary_pastelOrange,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 10,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: ColorSystem.primary_pastelOrange,
                                      ),
                                    ),
                                    Container()
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "20/100",
                                    style: TypographySystem.caption.copyWith(
                                      color: ColorSystem.neutral_white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.24,
                                  ),
                                  Text(
                                    "Exp",
                                    textAlign: TextAlign.right,
                                    style: TypographySystem.caption.copyWith(
                                      color: ColorSystem.neutral_white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.diamond_rounded,
                            color: ColorSystem.secondary_cyanCornflower,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 10,
                                width: MediaQuery.of(context).size.width * 0.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: ColorSystem
                                            .secondary_cyanCornflower,
                                      ),
                                    ),
                                    Container()
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "12",
                                    style: TypographySystem.caption.copyWith(
                                      color: ColorSystem.neutral_white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.31,
                                  ),
                                  Text(
                                    "Gem",
                                    textAlign: TextAlign.right,
                                    style: TypographySystem.caption.copyWith(
                                      color: ColorSystem.neutral_white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Level 1",
                  style: TypographySystem.subtitle1.copyWith(
                    color: ColorSystem.neutral_white,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.paid_rounded,
                  color: ColorSystem.primary_pastelOrange,
                ),
                const SizedBox(width: 10),
                Text(
                  "0",
                  style: TypographySystem.subtitle1.copyWith(
                    color: ColorSystem.primary_pastelOrange,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff412871),
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: ColorSystem.primary_electricIndigo,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
