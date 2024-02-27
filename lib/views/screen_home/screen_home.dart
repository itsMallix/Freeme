import 'package:flutter/material.dart';
import 'package:freeme/component/screen_home/home_bannerObjective.dart';
import 'package:freeme/component/screen_home/home_characterStats.dart';
import 'package:freeme/component/screen_home/home_historyPath.dart';
import 'package:freeme/component/screen_home/home_milestoneStreak.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/views/screen_home/screen_home_objective.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CharacterStats(),
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
              GestureDetector(
                  onTap: () {
                    Get.to(const MissionObjective());
                  },
                  child: const BannerObjective()),
              const SizedBox(height: 30),
              CircularPercentIndicator(
                backgroundColor: ColorSystem.neutral_white.withOpacity(0.2),
                radius: 100,
                animation: true,
                animationDuration: 1200,
                lineWidth: 25,
                percent: 0.0,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "0",
                      style: TypographySystem.heading1.copyWith(
                        fontSize: 50,
                        color: ColorSystem.primary_pastelOrange,
                      ),
                    ),
                    Text(
                      "Hari",
                      style: TypographySystem.subtitle3.copyWith(
                        color: ColorSystem.neutral_white,
                      ),
                    )
                  ],
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: ColorSystem.primary_pastelOrange,
              ),
              const SizedBox(height: 30),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15.0),
                  border: Border.all(
                    color: ColorSystem.primary_electricIndigo.withOpacity(0.5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sedang Berjalan",
                        style: TypographySystem.subtitle1.copyWith(
                          color: ColorSystem.primary_pastelOrange,
                        ),
                      ),
                      Text(
                        "0 Hari 0 Jam 0 Menit 0 Detik",
                        style: TypographySystem.subtitle3.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: ColorSystem.gradient_crayolaBlue,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Set Goals",
                    style: TypographySystem.heading2.copyWith(
                      color: ColorSystem.neutral_white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 65,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Streak Terbanyak",
                          style: TypographySystem.subtitle2.copyWith(
                            color: ColorSystem.primary_pastelOrange,
                          ),
                        ),
                        Text(
                          "30 Hari 12 Jam",
                          style: TypographySystem.subtitle3.copyWith(
                            color: ColorSystem.neutral_white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Relapse",
                          style: TypographySystem.subtitle2.copyWith(
                            color: ColorSystem.primary_pastelOrange,
                          ),
                        ),
                        Text(
                          "0 Kali",
                          style: TypographySystem.subtitle3.copyWith(
                            color: ColorSystem.neutral_white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Milestone Streak",
                    style: TypographySystem.heading2
                        .copyWith(color: ColorSystem.neutral_white),
                  ),
                  const Spacer(),
                  Text(
                    "Lihat Semua",
                    style: TypographySystem.caption.copyWith(
                      color: ColorSystem.primary_pastelOrange,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const SizedBox(
                height: 150,
                width: double.infinity,
                child: BuildMilestone(),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Riwayat Perjalanan",
                    style: TypographySystem.heading2.copyWith(
                      color: ColorSystem.neutral_white,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Lihat Semua",
                    style: TypographySystem.caption.copyWith(
                      color: ColorSystem.primary_pastelOrange,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const BuildHistory(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
