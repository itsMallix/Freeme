import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/views/screen_diagnose/screen_diagnose_3.dart';
import 'package:get/get.dart';

class ScreenDiagnose2 extends StatelessWidget {
  const ScreenDiagnose2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: ColorSystem.neutral_white,
          ),
        ),
        backgroundColor: ColorSystem.primary_darkPurple,
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Berikan Preferensi",
                style: TypographySystem.heading2.copyWith(
                  color: ColorSystem.neutral_white,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "Pilih Jenis Karaktermu",
                style: TypographySystem.heading2.copyWith(
                  color: ColorSystem.neutral_white,
                ),
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                      color: ColorSystem.primary_darkPurple,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.female_rounded,
                          color: ColorSystem.neutral_white,
                          size: 100,
                        ),
                        Text(
                          "Perempuan",
                          style: TypographySystem.subtitle2
                              .copyWith(color: ColorSystem.neutral_white),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                      color: ColorSystem.primary_darkPurple,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.male_rounded,
                          color: ColorSystem.neutral_white,
                          size: 100,
                        ),
                        Text(
                          "Laki-laki",
                          style: TypographySystem.subtitle2.copyWith(
                            color: ColorSystem.neutral_white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorSystem.primary_pastelOrange,
        onPressed: () {
          Get.to(() => const ScreenDiagnose3());
        },
        child: const Icon(
          Icons.navigate_next_rounded,
        ),
      ),
    );
  }
}
