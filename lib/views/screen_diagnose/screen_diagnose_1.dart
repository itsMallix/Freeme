import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/views/screen_diagnose/screen_diagnose_2.dart';

class ScreenDiagnose1 extends StatelessWidget {
  const ScreenDiagnose1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      appBar: AppBar(backgroundColor: ColorSystem.primary_darkPurple),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                "Halo Pejuang!",
                style: TypographySystem.heading1.copyWith(
                  color: ColorSystem.neutral_white,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "Kami harus memanggilmu siapa?",
                style: TypographySystem.heading2.copyWith(
                  color: ColorSystem.neutral_white,
                ),
              ),
              const SizedBox(height: 50),
              TextField(
                style: TypographySystem.bodyText1
                    .copyWith(color: ColorSystem.neutral_white),
                cursorColor: ColorSystem.primary_pastelOrange,
                decoration: InputDecoration(
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorSystem.primary_pastelOrange,
                    ),
                  ),
                  hintText: "Display Name",
                  hintStyle: TypographySystem.bodyText1.copyWith(
                    color: ColorSystem.neutral_metallicSilver,
                  ),
                  suffixIcon: const Icon(
                    Icons.waving_hand_rounded,
                    color: ColorSystem.neutral_metallicSilver,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Shadow Hunter",
                        style: TypographySystem.bodyText1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Gilgamesh",
                        style: TypographySystem.bodyText1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Kusabimaru",
                        style: TypographySystem.bodyText1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Voyager 2",
                        style: TypographySystem.bodyText1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "This Flamingo",
                        style: TypographySystem.bodyText1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Lunar Eclipse",
                        style: TypographySystem.bodyText1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Mystic Breau",
                        style: TypographySystem.bodyText1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Emerald Enfoncer 3",
                        style: TypographySystem.bodyText1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ColorSystem.primary_electricIndigo,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "C_Tyz",
                        style: TypographySystem.bodyText1.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                      ),
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ScreenDiagnose2(),
            ),
          );
        },
        child: const Icon(
          Icons.navigate_next_rounded,
        ),
      ),
    );
  }
}
