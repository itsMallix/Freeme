import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/model/model_clans/model_clans_join.dart';

class ClansJoinCard extends StatelessWidget {
  const ClansJoinCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<ClanList> clanList = [
      ClanList(
        title: "Fapstronauts",
        space: "3/5 Anggota",
        description:
            "Komunitas yang didedikasikan untuk membantu individu yang ingin membebaskan diri dari kecanduan pornografi. Saling memberikan dukungan, berbagi pengalaman, dan memberikan motivasi untuk menciptakan gaya hidup yang lebih sehat.",
        sign: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient: ColorSystem.gradient_crayolaBlue,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Icon(
            Icons.spa_rounded,
            color: ColorSystem.neutral_white,
            size: 30,
          ),
        ),
      ),
      ClanList(
        title: "Clean State Society",
        space: "4/5 Anggota",
        description:
            "Komunitas yang didedikasikan untuk membantu individu yang ingin membebaskan diri dari kecanduan pornografi. Saling memberikan dukungan, berbagi pengalaman, dan memberikan motivasi untuk menciptakan gaya hidup yang lebih sehat.",
        sign: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient: ColorSystem.gradient_turquoiseGreen,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Icon(
            Icons.clean_hands_sharp,
            color: ColorSystem.neutral_white,
            size: 30,
          ),
        ),
      ),
      ClanList(
        title: "No Nuts Nation",
        space: "4/5 Anggota",
        description:
            "Komunitas yang didedikasikan untuk membantu individu yang ingin membebaskan diri dari kecanduan pornografi. Saling memberikan dukungan, berbagi pengalaman, dan memberikan motivasi untuk menciptakan gaya hidup yang lebih sehat.",
        sign: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient: ColorSystem.gradient_icterineBeer,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Icon(
            Icons.nature,
            color: ColorSystem.neutral_white,
            size: 30,
          ),
        ),
      ),
      ClanList(
        title: "Purity Pioneers",
        space: "3/5 Anggota",
        description:
            "Komunitas yang didedikasikan untuk membantu individu yang ingin membebaskan diri dari kecanduan pornografi. Saling memberikan dukungan, berbagi pengalaman, dan memberikan motivasi untuk menciptakan gaya hidup yang lebih sehat.",
        sign: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient: ColorSystem.gradient_voidPurple,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Icon(
            Icons.paragliding_rounded,
            color: ColorSystem.neutral_white,
            size: 30,
          ),
        ),
      ),
      ClanList(
        title: "Chincin No Tsubasa",
        space: "2/5 Anggota",
        description:
            "Komunitas yang didedikasikan untuk membantu individu yang ingin membebaskan diri dari kecanduan pornografi. Saling memberikan dukungan, berbagi pengalaman, dan memberikan motivasi untuk menciptakan gaya hidup yang lebih sehat.",
        sign: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient: ColorSystem.gradient_awesomePurple,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Icon(
            Icons.flutter_dash_rounded,
            color: ColorSystem.neutral_white,
            size: 30,
          ),
        ),
      ),
    ];
    return ListView.builder(
      itemCount: clanList.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            height: 170,
            width: double.infinity,
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: ColorSystem.tertiary_erieBlack,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    clanList[index].sign,
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          clanList[index].title,
                          style: TypographySystem.subtitle1.copyWith(
                            color: ColorSystem.neutral_white,
                          ),
                        ),
                        Text(
                          clanList[index].space,
                          style: TypographySystem.bodyText2.copyWith(
                            color: ColorSystem.neutral_metallicSilver,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  clanList[index].description,
                  style: TypographySystem.caption.copyWith(
                    color: ColorSystem.neutral_white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
