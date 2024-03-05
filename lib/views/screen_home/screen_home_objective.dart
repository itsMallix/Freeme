import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';

class MissionObjective extends StatelessWidget {
  const MissionObjective({super.key});

  @override
  Widget build(BuildContext context) {
    final lockedMedal = SvgPicture.asset(
      "assets/images/screen_home/objective_medal.svg",
    );

    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      appBar: AppBar(
        backgroundColor: ColorSystem.primary_darkPurple,
        leading: const BackButton(color: ColorSystem.neutral_white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    width: double.infinity,
                    child: SvgPicture.asset(
                      "assets/images/screen_home/objective_banner.svg",
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Misi Objektif",
                    style: TypographySystem.heading2.copyWith(
                      color: ColorSystem.neutral_white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TypographySystem.bodyText1.copyWith(
                        color: ColorSystem.neutral_white,
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                          text:
                              "Selesaikan misi dibawah ini dan kamu akan mendapatkan lima pencapaian",
                        ),
                        TextSpan(
                          text: " 100 Koin",
                          style: TypographySystem.bodyText1.copyWith(
                            color: ColorSystem.primary_pastelOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: " setelah menyelesaikannya!",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Progresmu",
                  style: TypographySystem.subtitle1.copyWith(
                    color: ColorSystem.neutral_white,
                  ),
                ),
                const Spacer(),
                Text(
                  "0%",
                  style: TypographySystem.subtitle1.copyWith(
                    color: ColorSystem.primary_pastelOrange,
                  ),
                )
              ],
            ),
            const SizedBox(height: 5),
            Container(
              height: 10,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorSystem.neutral_white,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: lockedMedal,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Set Goals",
                      style: TypographySystem.subtitle1.copyWith(
                        color: ColorSystem.neutral_white,
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        "Tambah dan tetapkan tujuan utamamu sebagai langkah untuk meninggalkan kebiasaan PMO",
                        style: TypographySystem.caption.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                        maxLines: 2,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: lockedMedal,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Habits Baik",
                      style: TypographySystem.subtitle1.copyWith(
                        color: ColorSystem.neutral_white,
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        "Ciptakan kebiasaan baru sebagai langkah untuk meninggalkan kebiasaan lama",
                        style: TypographySystem.caption.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                        maxLines: 2,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: lockedMedal,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rutinitas Terstruktur",
                      style: TypographySystem.subtitle1.copyWith(
                        color: ColorSystem.neutral_white,
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        "Atur rutinitasmu sehari-hari dalam menjalani kehidupan di dunia nyata dengan lebih baik",
                        style: TypographySystem.caption.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                        maxLines: 2,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: lockedMedal,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gabung Clan",
                      style: TypographySystem.subtitle1.copyWith(
                        color: ColorSystem.neutral_white,
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        "Gabung dengan clan guna menjaga komitmen kamu yang ingin kamu wujudkan",
                        style: TypographySystem.caption.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                        maxLines: 2,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: lockedMedal,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Minta Pertolongan",
                      style: TypographySystem.subtitle1.copyWith(
                        color: ColorSystem.neutral_white,
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        "Ketika merasa berhasrat cobalah meminta pertolongan pada partner satu clanmu",
                        style: TypographySystem.caption.copyWith(
                          color: ColorSystem.neutral_white,
                        ),
                        maxLines: 2,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
