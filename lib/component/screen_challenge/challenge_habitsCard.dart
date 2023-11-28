import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/model/model_challenge/model_habits.dart';

List<HabitsData> habitsData = [
  HabitsData(
    title: "Olahraga Teratur",
    description:
        "Frustasi banget gara-gara jadwal kuliah tiada habisnya bikin ga sempat olahraga. tapi aku coba olahraga akhir pekan ini",
  ),
  HabitsData(
    title: "Scroll Tiktok",
    description:
        "Kurangi scroll tiktok karena di tiktok banyak konten yang bikin sagne, dan aku sudah bertekan untuk tidak relapse",
  ),
  HabitsData(
    title: "Tidur Tepat Waktu",
    description:
        "Salah satu pemicu untuk pmo adalah rasa sendiri seperti malam hari, maka akan ku kurangi begadang",
  ),
  HabitsData(
    title: "Baca 1 Buku",
    description:
        "Baca 1 buku dengan judul bebas untuk membentuk habits baru yang lebih bermanfaat dan menyehatkan diri sendiri",
  ),
  HabitsData(
    title: "Lakukan Journaling",
    description:
        "Catat segala hal yang sudah ku lalui selama satu hari ini guna tracking habits ku terbangun atau tidak",
  ),
];

class BuildHabitsChallenge extends StatelessWidget {
  const BuildHabitsChallenge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      itemCount: habitsData.length,
      itemBuilder: (context, index) {
        return Container(
          height: 130,
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorSystem.secondary_grapePurple,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60,
                height: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10.0),
                  ),
                  gradient: ColorSystem.gradient_awesomePurple,
                ),
                child: const Icon(
                  Icons.remove_circle_outlined,
                  size: 45,
                  color: ColorSystem.primary_darkPurple,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      habitsData[index].title,
                      style: TypographySystem.subtitle2.copyWith(
                        color: ColorSystem.neutral_white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        habitsData[index].description,
                        // "tes",
                        style: TypographySystem.caption.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 60,
                height: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(10.0),
                  ),
                  gradient: ColorSystem.gradient_turquoiseGreen,
                ),
                child: const Icon(
                  Icons.add_circle_rounded,
                  size: 40,
                  color: ColorSystem.primary_darkPurple,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
