import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';

class BuildHistory extends StatelessWidget {
  const BuildHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: ColorSystem.primary_electricIndigo,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(10.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.track_changes_rounded,
                      color: ColorSystem.secondary_ufoGreen,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "30 Hari",
                      style: TypographySystem.subtitle3.copyWith(
                        color: ColorSystem.neutral_white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.access_time_filled_rounded,
                      color: ColorSystem.negative_fieryRose,
                    ),
                    const SizedBox(width: 5),
                    Column(
                      children: [
                        Text(
                          "26-04-2023 | 18:49 WIB",
                          style: TypographySystem.subtitle3.copyWith(
                            color: ColorSystem.neutral_white,
                          ),
                        ),
                        Text(
                          "26-05-2023 | 07:12 WIB",
                          style: TypographySystem.subtitle3.copyWith(
                            color: ColorSystem.neutral_white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.note_rounded,
                      color: ColorSystem.primary_pastelOrange,
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      width: 190,
                      child: Text(
                        "Ini adalah langakah pertamaku!, Semoga bisa menjadi lebih baik",
                        style: TypographySystem.caption.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: 100,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: ColorSystem.primary_electricIndigo.withOpacity(0.2),
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(10.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 25,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: ColorSystem.primary_electricIndigo,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "Hadiah",
                    style: TypographySystem.subtitle3.copyWith(
                      color: ColorSystem.neutral_white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      color: ColorSystem.primary_pastelOrange,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "30",
                      style: TypographySystem.subtitle3.copyWith(
                        color: ColorSystem.neutral_white,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                      child: Image.asset(
                        "assets/images/component/badge/badge_3.png",
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
