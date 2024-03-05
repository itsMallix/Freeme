import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/views/screen_diagnose/screen_diagnose_4.dart';
import 'package:get/get.dart';

class ScreenDiagnose3 extends StatelessWidget {
  const ScreenDiagnose3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      appBar: AppBar(
        backgroundColor: ColorSystem.primary_darkPurple,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: ColorSystem.neutral_white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Jadilah Pejuang",
                style: TypographySystem.heading2.copyWith(
                  color: ColorSystem.neutral_white,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "Pilih Karakter Favoritmu",
                style: TypographySystem.heading2.copyWith(
                  color: ColorSystem.neutral_white,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: ColorSystem.primary_electricIndigo,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorSystem.primary_electricIndigo,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorSystem.primary_electricIndigo,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorSystem.primary_electricIndigo,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorSystem.primary_electricIndigo,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorSystem.primary_electricIndigo,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorSystem.primary_electricIndigo,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorSystem.primary_pastelOrange,
        onPressed: () {
          Get.to(() => const ScreenDiagnose4());
        },
        child: const Icon(
          Icons.navigate_next_rounded,
        ),
      ),
    );
  }
}
