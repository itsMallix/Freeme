import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';

class BuildRoutineChallenge extends StatelessWidget {
  const BuildRoutineChallenge({
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
                  color: ColorSystem.secondary_rajah,
                ),
                child: Transform.scale(
                  scale: 1.8,
                  child: Checkbox(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(2.0),
                      ),
                      side: BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    checkColor: ColorSystem.neutral_white,
                    fillColor: MaterialStateProperty.all(
                      ColorSystem.secondary_aztecGold,
                    ),
                    value: false,
                    onChanged: (_) {},
                  ),
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
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 14.0),
                height: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(10.0),
                  ),
                  color: ColorSystem.primary_darkPurple,
                ),
                child: Container(
                  height: 30,
                  width: 10,
                  decoration: BoxDecoration(
                    color: ColorSystem.secondary_rajah,
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "1",
                        style: TypographySystem.subtitle1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                        child: Divider(
                          thickness: 3,
                          height: 1,
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                      Text(
                        "5",
                        style: TypographySystem.subtitle1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
