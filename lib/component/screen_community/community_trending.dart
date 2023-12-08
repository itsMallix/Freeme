import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';

class CommunityTrending extends StatelessWidget {
  const CommunityTrending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 150,
            width: double.infinity,
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  children: [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
