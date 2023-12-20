import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/model/model_community/model_community_card.dart';

class CommunityTrending extends StatelessWidget {
  const CommunityTrending({super.key});

  @override
  Widget build(BuildContext context) {
    List<CommunityTrendigCard> cards = [
      CommunityTrendigCard(
        profile: const CircleAvatar(
          backgroundColor: ColorSystem.negative_fieryRose,
        ),
        badge: const Image(
          image: AssetImage("assets/images/component/badge/badge_1.png"),
        ),
        name: "Jhon Doe",
        timestamp: "1 Jam yang lalu",
        content: "lorem ipsum dolor sit amet",
        likes: "56",
        comment: "12",
        share: "20",
      ),
    ];
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              itemCount: cards.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cards[index].profile,
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cards[index].name,
                              style: TypographySystem.subtitle2
                                  .copyWith(color: ColorSystem.neutral_white),
                            ),
                            const SizedBox(width: 5),
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: cards[index].badge,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          cards[index].timestamp,
                          style: TypographySystem.subtitle3.copyWith(
                            color: ColorSystem.neutral_metallicSilver,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          cards[index].content,
                          style: TypographySystem.caption.copyWith(
                            color: ColorSystem.neutral_white,
                            fontSize: 14,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
