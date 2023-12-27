import 'package:flutter/material.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/model/model_community/model_trending_card.dart';

class ScreenCommunityTrending extends StatelessWidget {
  const ScreenCommunityTrending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: ListView.builder(
        //   scrollDirection: Axis.vertical,
        //   itemCount: cards.length,
        //   itemBuilder: (context, index) => Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
        //     child: SizedBox(
        //       height: 150,
        //       width: double.infinity,
        //       child: Row(
        //         children: [
        //           cards[index].profile,
        //           Column(
        //             children: [
        //               Text(cards[index].name),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        );
  }
}
