import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/model/model_clans/model_clans_join.dart';

class ScreenClansDetail extends StatelessWidget {
  ClanList clanList;
  ScreenClansDetail({super.key, required this.clanList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorSystem.primary_darkPurple,
        leading: const BackButton(
          color: ColorSystem.neutral_white,
        ),
        title: Text(
          "Clans",
          style: TypographySystem.heading2.copyWith(
            color: ColorSystem.neutral_white,
          ),
        ),
      ),
      backgroundColor: ColorSystem.primary_darkPurple,
      body: Center(child: Text(clanList.title)),
    );
  }
}
