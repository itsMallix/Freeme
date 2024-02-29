import 'package:flutter/material.dart';
import 'package:freeme/component/screen_home/home_milestoneStreak.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: ColorSystem.neutral_white,
                    radius: 40,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kusabimaru",
                        style: TypographySystem.subtitle1
                            .copyWith(color: ColorSystem.neutral_white),
                      ),
                      Text(
                        "@kumaru227",
                        style: TypographySystem.subtitle3.copyWith(
                          color: ColorSystem.neutral_metallicSilver,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 3,
                          vertical: 3,
                        ),
                        height: 25,
                        // width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorSystem.primary_electricIndigo
                              .withOpacity(0.5),
                        ),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: ColorSystem.primary_pastelOrange,
                              radius: 10,
                              child: Icon(
                                Icons.circle,
                                color: ColorSystem.neutral_white,
                                size: 10 / 2,
                              ),
                            ),
                            const SizedBox(width: 3),
                            Text(
                              "Bagikan kemenangan!",
                              style: TypographySystem.caption
                                  .copyWith(color: ColorSystem.neutral_white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width / 2.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: ColorSystem.primary_electricIndigo,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.circle,
                                color: ColorSystem.negative_fieryRose,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "25 April 2023",
                                style: TypographySystem.bodyText1.copyWith(
                                  color: ColorSystem.neutral_metallicSilver,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Tanggal Bergabung",
                            style: TypographySystem.subtitle3.copyWith(
                              color: ColorSystem.neutral_white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width / 2.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: ColorSystem.primary_electricIndigo,
                        ),
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
                                Icons.circle,
                                color: ColorSystem.secondary_rajah,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "10 Mei 2023",
                                style: TypographySystem.bodyText1.copyWith(
                                  color: ColorSystem.neutral_metallicSilver,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Terakhir Bermain",
                            style: TypographySystem.subtitle3.copyWith(
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
              Text(
                "Pencapaian Milestone Streak",
                style: TypographySystem.subtitle1.copyWith(
                  color: ColorSystem.neutral_white,
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                height: 150,
                width: double.infinity,
                child: BuildMilestone(),
              ),
              Text(
                "Pencapaian Misi Objektif",
                style: TypographySystem.subtitle2.copyWith(
                  color: ColorSystem.neutral_white,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
