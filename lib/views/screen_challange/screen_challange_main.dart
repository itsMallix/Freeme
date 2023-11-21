import 'package:flutter/material.dart';
import 'package:freeme/component/screen_home/home_characterStats.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';

class ScreenChallangeMain extends StatelessWidget {
  const ScreenChallangeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorSystem.primary_darkPurple,
        body: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CharacterStats(),
              Row(
                children: [
                  Text(
                    "Level 1",
                    style: TypographySystem.subtitle1.copyWith(
                      color: ColorSystem.neutral_white,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.paid_rounded,
                    color: ColorSystem.primary_pastelOrange,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "0",
                    style: TypographySystem.subtitle1.copyWith(
                      color: ColorSystem.primary_pastelOrange,
                    ),
                  )
                ],
              ),
              TabBar(
                labelStyle: TypographySystem.subtitle2,
                labelColor: ColorSystem.primary_pastelOrange,
                indicatorColor: ColorSystem.primary_pastelOrange,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                unselectedLabelColor:
                    ColorSystem.primary_pastelOrange.withOpacity(0.5),
                tabs: const [
                  Tab(text: 'Habits'),
                  Tab(text: 'Rutinitas'),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    // Content for Tab
                    Center(
                      child: Text('Tab 1 Content'),
                    ),
                    // Content for Tab 2
                    Center(
                      child: Text('Tab 2 Content'),
                    ),
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
