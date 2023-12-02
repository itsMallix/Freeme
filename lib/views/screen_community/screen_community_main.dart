import 'package:flutter/material.dart';
import 'package:freeme/component/screen_community/community_terbaru.dart';
import 'package:freeme/component/screen_community/community_tersimpan.dart';
import 'package:freeme/component/screen_community/community_trending.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';

class ScreenCommunityMain extends StatefulWidget {
  const ScreenCommunityMain({Key? key}) : super(key: key);

  @override
  State<ScreenCommunityMain> createState() => _ScreenCommunityMainState();
}

class _ScreenCommunityMainState extends State<ScreenCommunityMain>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ColorSystem.primary_darkPurple,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              TabBar(
                controller: _tabController,
                labelStyle: TypographySystem.subtitle2,
                labelColor: ColorSystem.primary_pastelOrange,
                indicatorColor: ColorSystem.primary_pastelOrange,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 2.0, // Add indicatorWeight
                dividerColor: Colors.transparent,
                unselectedLabelColor:
                    ColorSystem.primary_pastelOrange.withOpacity(0.5),
                tabs: const [
                  Tab(text: "Trending"),
                  Tab(text: "Terbaru"),
                  Tab(text: "Tersimpan"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    CommunityTrending(),
                    CommunityTerbaru(),
                    CommunityTersimpan(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
