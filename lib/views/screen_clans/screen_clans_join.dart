import 'package:flutter/material.dart';
import 'package:freeme/component/screen_clans/clans_join_card.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';

class ScreenClansJoin extends StatelessWidget {
  const ScreenClansJoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      appBar: AppBar(
        leading: const BackButton(
          color: ColorSystem.neutral_white,
        ),
        backgroundColor: ColorSystem.primary_darkPurple,
        title: Text(
          "Clans",
          style: TypographySystem.heading2.copyWith(
            color: ColorSystem.neutral_white,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: ClansJoinCard(),
        // child: Column(
        //   children: [
        //     const SizedBox(height: 20),
        //     Container(
        //       height: 170,
        //       width: double.infinity,
        //       padding: const EdgeInsets.all(12.0),
        //       decoration: BoxDecoration(
        //         color: ColorSystem.tertiary_erieBlack,
        //         borderRadius: BorderRadius.circular(16.0),
        //       ),
        //       child: Column(
        //         children: [
        //           Row(
        //             children: [
        //               Container(
        //                 height: 50,
        //                 width: 50,
        //                 decoration: BoxDecoration(
        //                   gradient: ColorSystem.gradient_crayolaBlue,
        //                   borderRadius: BorderRadius.circular(10.0),
        //                 ),
        //                 child: const Icon(
        //                   Icons.handshake_rounded,
        //                   size: 30,
        //                 ),
        //               ),
        //               const SizedBox(width: 10),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     "Fapstronauts",
        //                     style: TypographySystem.subtitle1.copyWith(
        //                       color: ColorSystem.neutral_white,
        //                     ),
        //                   ),
        //                   Text(
        //                     "3/5 Anggota",
        //                     style: TypographySystem.bodyText2.copyWith(
        //                       color: ColorSystem.neutral_metallicSilver,
        //                     ),
        //                   )
        //                 ],
        //               ),
        //             ],
        //           ),
        //           const SizedBox(height: 10),
        //           Text(
        //             "Komunitas yang didedikasikan untuk membantu individu yang ingin membebaskan diri dari kecanduan pornografi. Saling memberikan dukungan, berbagi pengalaman, dan memberikan motivasi untuk menciptakan gaya hidup yang lebih sehat.",
        //             style: TypographySystem.caption.copyWith(
        //               color: ColorSystem.neutral_white,
        //             ),
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
