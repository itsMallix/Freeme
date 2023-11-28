import 'package:flutter/material.dart';
import 'package:freeme/component/screen_challenge/challenge_habitsCard.dart';
import 'package:freeme/component/screen_challenge/challenge_routineCard.dart';
import 'package:freeme/component/screen_home/home_characterStats.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/views/screen_challange/screen_challange_habits.dart';
import 'package:freeme/views/screen_challange/screen_challange_routine.dart';

class ScreenChallangeMain extends StatefulWidget {
  const ScreenChallangeMain({Key? key}) : super(key: key);

  @override
  _ScreenChallangeMainState createState() => _ScreenChallangeMainState();
}

class _ScreenChallangeMainState extends State<ScreenChallangeMain>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

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
                controller: _tabController,
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
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    // item tab habits
                    BuildHabitsChallenge(),
                    // item tab rutinitas
                    BuildRoutineChallenge(),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(),
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton(
      heroTag: 'challenge',
      onPressed: () {
        if (_tabController.index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ScreenChallangeHabits(),
            ),
          );
        }
        if (_tabController.index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ScreenChallangeRoutine(),
            ),
          );
        }
      },
      backgroundColor: ColorSystem.primary_pastelOrange,
      child: const Icon(Icons.add),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
