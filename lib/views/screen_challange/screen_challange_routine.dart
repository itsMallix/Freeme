import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';

class ScreenChallangeRoutine extends StatelessWidget {
  const ScreenChallangeRoutine({super.key});

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
          "Tambah Rutinitas",
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
            ),
          )
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
                      hintText: "Judul Rutinitas",
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              color: ColorSystem.tertiary_erieBlack,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "Daftar Checklist",
                    style: TypographySystem.subtitle1.copyWith(
                      color: ColorSystem.neutral_white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      style: TypographySystem.contentText.copyWith(
                        color: ColorSystem.tertiary_paleViolet,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorSystem.tertiary_gunMetal,
                        hintText: "Masukkan daftar periksa baru",
                        hintStyle: TypographySystem.contentText.copyWith(
                          color: ColorSystem.tertiary_paleViolet,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 3.0),
                        prefixIcon: const Icon(
                          Icons.add_rounded,
                          color: ColorSystem.tertiary_paleViolet,
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Tingkat Kesulitan",
                    style: TypographySystem.subtitle1.copyWith(
                      color: ColorSystem.neutral_white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff30283F),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Aman",
                            style: TypographySystem.subtitle3.copyWith(
                              color: ColorSystem.tertiary_paleViolet,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff30283F),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Lumayan",
                            style: TypographySystem.subtitle3.copyWith(
                              color: ColorSystem.tertiary_paleViolet,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff30283F),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Susah",
                            style: TypographySystem.subtitle3.copyWith(
                              color: ColorSystem.tertiary_paleViolet,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff30283F),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Berani",
                            style: TypographySystem.subtitle3.copyWith(
                              color: ColorSystem.tertiary_paleViolet,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Atur Jadwal",
                    style: TypographySystem.subtitle1.copyWith(
                      color: ColorSystem.neutral_white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 3.4,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: const Color(0xff30283F),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          "Harian",
                          style: TypographySystem.subtitle1.copyWith(
                            color: ColorSystem.tertiary_paleViolet,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 3.4,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: const Color(0xff30283F),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          "Mingguan",
                          style: TypographySystem.subtitle1.copyWith(
                            color: ColorSystem.tertiary_paleViolet,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 3.4,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: const Color(0xff30283F),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          "Bulanan",
                          style: TypographySystem.subtitle1.copyWith(
                            color: ColorSystem.tertiary_paleViolet,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
