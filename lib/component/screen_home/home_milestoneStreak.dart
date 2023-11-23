import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/model/model_homeScreen/model_milestoneStreak.dart';

List<MilestoneStreak> milestoneData = [
  MilestoneStreak(
    imagePath: "assets/images/component/badge/badge_1.png",
    title: "Warrior",
    description: "3 Hari Streak",
  ),
  MilestoneStreak(
    imagePath: "assets/images/component/badge/badge_2.png",
    title: "Prodigy",
    description: "7 Hari Streak",
  ),
  MilestoneStreak(
    imagePath: "assets/images/component/badge/badge_3.png",
    title: "Virtuoso",
    description: "30 Hari Streak",
  ),
  MilestoneStreak(
    imagePath: "assets/images/component/badge/badge_0.png",
    title: "Supreme",
    description: "90 Hari Streak",
  ),
  MilestoneStreak(
    imagePath: "assets/images/component/badge/badge_0.png",
    title: "Godlike",
    description: "120 Hari Streak",
  ),
  MilestoneStreak(
    imagePath: "assets/images/component/badge/badge_0.png",
    title: "Ascendant",
    description: "356 Hari Streak",
  ),
];

class BuildMilestone extends StatelessWidget {
  const BuildMilestone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: milestoneData.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 100,
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Image.asset(
                milestoneData[index].imagePath,
              ),
            ),
            Text(
              milestoneData[index].title,
              style: TypographySystem.subtitle3.copyWith(
                color: ColorSystem.neutral_white,
              ),
            ),
            Text(
              milestoneData[index].description,
              style: TypographySystem.caption.copyWith(
                color: ColorSystem.neutral_white,
              ),
            )
          ],
        );
      },
    );
  }
}
