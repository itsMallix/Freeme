import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';

class ScreenChallangeHabits extends StatelessWidget {
  const ScreenChallangeHabits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.tertiary_erieBlack,
      appBar: AppBar(
        backgroundColor: ColorSystem.primary_darkPurple,
        leading: const BackButton(
          color: ColorSystem.neutral_white,
        ),
        title: Text(
          "Tambah Habits",
          style: TypographySystem.heading2.copyWith(
            color: ColorSystem.neutral_white,
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Simpan",
                style: TypographySystem.subtitle3.copyWith(
                  color: ColorSystem.primary_pastelOrange,
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration:
                  const BoxDecoration(color: ColorSystem.primary_darkPurple),
              width: double.infinity,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xff37225A),
                      hintText: "Judul Habits",
                      hintStyle: TypographySystem.bodyText1.copyWith(
                        color: ColorSystem.neutral_metallicSilver,
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 190,
                    child: TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xff37225A),
                        hintText: "Catatan",
                        hintStyle: TypographySystem.bodyText1.copyWith(
                          color: ColorSystem.neutral_metallicSilver,
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              color: ColorSystem.tertiary_erieBlack,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "Jenis Habits",
                    style: TypographySystem.subtitle1.copyWith(
                      color: ColorSystem.neutral_white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.add_circle_outline_outlined,
                            size: 50,
                            color: ColorSystem.secondary_grapePurple,
                          ),
                          Text(
                            "Positif",
                            style: TypographySystem.subtitle3.copyWith(
                              color: ColorSystem.neutral_metallicSilver,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 40),
                      Column(
                        children: [
                          const Icon(
                            Icons.remove_circle_outline_outlined,
                            size: 50,
                            color: ColorSystem.secondary_grapePurple,
                          ),
                          Text(
                            "Negatif",
                            style: TypographySystem.subtitle3.copyWith(
                              color: ColorSystem.neutral_metallicSilver,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Tingkat Kesulitan",
                    style: TypographySystem.subtitle1.copyWith(
                      color: ColorSystem.neutral_white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
