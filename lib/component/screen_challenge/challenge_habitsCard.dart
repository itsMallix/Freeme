import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';

class BuildHabitsChallenge extends StatelessWidget {
  const BuildHabitsChallenge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        Container(
          height: 130,
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
                      "Berolahraga Secara Teratur",
                      style: TypographySystem.subtitle2.copyWith(
                        color: ColorSystem.neutral_white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        "Frustasi banget gara-gara jadwal kuliah tiada habisnya bikin ga sempat olahraga. tapi aku coba olahraga akhir pekan ini",
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
        ),
      ],
    );
  }
}
