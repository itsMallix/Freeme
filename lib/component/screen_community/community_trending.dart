import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/model/model_community/model_trending_card.dart';

class CommunityTrending extends StatefulWidget {
  const CommunityTrending({super.key});

  @override
  State<CommunityTrending> createState() => _CommunityTrendingState();
}

class _CommunityTrendingState extends State<CommunityTrending> {
  @override
  Widget build(BuildContext context) {
    List<CommunityTrendigCard> cards = [
      CommunityTrendigCard(
        profile: const CircleAvatar(
          backgroundColor: ColorSystem.neutral_white,
        ),
        badge: const Image(
          image: AssetImage("assets/images/component/badge/badge_1.png"),
        ),
        name: "Acumalaka",
        timestamp: "2 menit yang lalu",
        content:
            "Pada titik ini, seseorang menyadari keinginannya untuk berhenti dari kebiasaan PMO (pornografi, masturbasi, dan onani). Dengan tekad yang kuat dan kesadaran akan dampak negatifnya terhadap kesejahteraan mental dan emosional, individu ini memilih untuk mengambil langkah-langkah positif menuju pemulihan dan pertumbuhan pribadi. Melalui komitmen untuk meninggalkan kebiasaan tersebut, orang ini bertujuan untuk menciptakan kehidupan yang lebih seimbang, sehat, dan berarti.",
        likes: "32",
        comment: "4",
        save: "2",
      ),
      CommunityTrendigCard(
        profile: const CircleAvatar(
          backgroundColor: ColorSystem.neutral_white,
        ),
        badge: const Image(
          image: AssetImage("assets/images/component/badge/badge_2.png"),
        ),
        name: "Sabimaru",
        timestamp: "9 menit yang lalu",
        content:
            "Pada titik ini, seseorang menyadari keinginannya untuk berhenti dari kebiasaan PMO (pornografi, masturbasi, dan onani). Dengan tekad yang kuat dan kesadaran akan dampak negatifnya terhadap kesejahteraan mental dan emosional, individu ini memilih untuk mengambil langkah-langkah positif menuju pemulihan dan pertumbuhan pribadi. Melalui komitmen untuk meninggalkan kebiasaan tersebut, orang ini bertujuan untuk menciptakan kehidupan yang lebih seimbang, sehat, dan berarti.",
        likes: "30",
        comment: "8",
        save: "5",
      ),
      CommunityTrendigCard(
        profile: const CircleAvatar(
          backgroundColor: ColorSystem.neutral_white,
        ),
        badge: const Image(
          image: AssetImage("assets/images/component/badge/badge_5.png"),
        ),
        name: "Thootless",
        timestamp: "12 menit yang lalu",
        content:
            "Pada titik ini, seseorang menyadari keinginannya untuk berhenti dari kebiasaan PMO (pornografi, masturbasi, dan onani). Dengan tekad yang kuat dan kesadaran akan dampak negatifnya terhadap kesejahteraan mental dan emosional, individu ini memilih untuk mengambil langkah-langkah positif menuju pemulihan dan pertumbuhan pribadi. Melalui komitmen untuk meninggalkan kebiasaan tersebut, orang ini bertujuan untuk menciptakan kehidupan yang lebih seimbang, sehat, dan berarti.",
        likes: "76",
        comment: "30",
        save: "10",
      ),
      CommunityTrendigCard(
        profile: const CircleAvatar(
          backgroundColor: ColorSystem.neutral_white,
        ),
        badge: const Image(
          image: AssetImage("assets/images/component/badge/badge_3.png"),
        ),
        name: "Swordigo",
        timestamp: "28 menit yang lalu",
        content:
            "Pada titik ini, seseorang menyadari keinginannya untuk berhenti dari kebiasaan PMO (pornografi, masturbasi, dan onani). Dengan tekad yang kuat dan kesadaran akan dampak negatifnya terhadap kesejahteraan mental dan emosional, individu ini memilih untuk mengambil langkah-langkah positif menuju pemulihan dan pertumbuhan pribadi. Melalui komitmen untuk meninggalkan kebiasaan tersebut, orang ini bertujuan untuk menciptakan kehidupan yang lebih seimbang, sehat, dan berarti.",
        likes: "79",
        comment: "32",
        save: "14",
      ),
      CommunityTrendigCard(
        profile: const CircleAvatar(
          backgroundColor: ColorSystem.neutral_white,
        ),
        badge: const Image(
          image: AssetImage("assets/images/component/badge/badge_2.png"),
        ),
        name: "Tok Dalang",
        timestamp: "45 yang lalu",
        content:
            "Pada titik ini, seseorang menyadari keinginannya untuk berhenti dari kebiasaan PMO (pornografi, masturbasi, dan onani). Dengan tekad yang kuat dan kesadaran akan dampak negatifnya terhadap kesejahteraan mental dan emosional, individu ini memilih untuk mengambil langkah-langkah positif menuju pemulihan dan pertumbuhan pribadi. Melalui komitmen untuk meninggalkan kebiasaan tersebut, orang ini bertujuan untuk menciptakan kehidupan yang lebih seimbang, sehat, dan berarti.",
        likes: "59",
        comment: "12",
        save: "10",
      ),
      CommunityTrendigCard(
        profile: const CircleAvatar(
          backgroundColor: ColorSystem.neutral_white,
        ),
        badge: const Image(
          image: AssetImage("assets/images/component/badge/badge_4.png"),
        ),
        name: "Doedoe",
        timestamp: "56 menit yang lalu",
        content:
            "Pada titik ini, seseorang menyadari keinginannya untuk berhenti dari kebiasaan PMO (pornografi, masturbasi, dan onani). Dengan tekad yang kuat dan kesadaran akan dampak negatifnya terhadap kesejahteraan mental dan emosional, individu ini memilih untuk mengambil langkah-langkah positif menuju pemulihan dan pertumbuhan pribadi. Melalui komitmen untuk meninggalkan kebiasaan tersebut, orang ini bertujuan untuk menciptakan kehidupan yang lebih seimbang, sehat, dan berarti.",
        likes: "56",
        comment: "12",
        save: "40",
      ),
    ];
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 4.0),
          child: SizedBox(
            width: double.infinity,
            child: SizedBox(
              child: ListView.builder(
                itemCount: cards.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          cards[index].profile,
                          const SizedBox(width: 10),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.69,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cards[index].name,
                                      style: TypographySystem.subtitle2
                                          .copyWith(
                                              color: ColorSystem.neutral_white),
                                    ),
                                    const SizedBox(width: 5),
                                    SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: cards[index].badge,
                                    ),
                                  ],
                                ),
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
                                    overflow: TextOverflow.ellipsis,
                                    color: ColorSystem.neutral_white,
                                    fontSize: 14,
                                  ),
                                  maxLines: 3,
                                  textAlign: TextAlign.left,
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.favorite_rounded,
                                      color: ColorSystem.negative_fieryRose,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      cards[index].likes,
                                      style:
                                          TypographySystem.subtitle3.copyWith(
                                        color:
                                            ColorSystem.neutral_metallicSilver,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    const SizedBox(width: 25),
                                    const Icon(
                                      Icons.mode_comment_outlined,
                                      color: ColorSystem.primary_electricIndigo,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      cards[index].comment,
                                      style:
                                          TypographySystem.subtitle3.copyWith(
                                        color:
                                            ColorSystem.neutral_metallicSilver,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    const SizedBox(width: 25),
                                    const Icon(
                                      Icons.bookmark,
                                      color: ColorSystem.primary_pastelOrange,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      cards[index].save,
                                      style:
                                          TypographySystem.subtitle3.copyWith(
                                        color:
                                            ColorSystem.neutral_metallicSilver,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.more_vert_rounded,
                              color: ColorSystem.neutral_white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Divider(
                        color: ColorSystem.neutral_metallicSilver,
                        thickness: 0.2,
                      ),
                    ),
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
