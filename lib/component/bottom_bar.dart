import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/views/screen_challange/screen_challange_main.dart';
import 'package:freeme/views/screen_clans/screen_clans_main.dart';
import 'package:freeme/views/screen_community/screen_community_main.dart';
import 'package:freeme/views/screen_home/screen_home.dart';
import 'package:freeme/views/screen_profile/screen_profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const ScreenHome(),
    const ScreenChallangeMain(),
    const ScreenClansMain(),
    const ScreenCommunityMain(),
    const ScreenProfile()
  ];

  void _onTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primary_darkPurple,
      appBar: AppBar(
        backgroundColor: ColorSystem.primary_darkPurple,
        title: SizedBox(
          height: 40,
          width: 120,
          child: SvgPicture.asset(
            "assets/images/logo_app_full.svg",
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_rounded,
              color: ColorSystem.neutral_white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_rounded,
              color: ColorSystem.neutral_white,
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (int index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          elevation: 0,
          shape: const CircleBorder(),
          onPressed: () {},
          child: Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: ColorSystem.gradient_voidPurple,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SvgPicture.asset(
                "assets/images/component/fist.svg",
                color: ColorSystem.neutral_white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff393248),
          selectedItemColor: ColorSystem.primary_pastelOrange,
          unselectedItemColor: ColorSystem.neutral_metallicSilver,
          showUnselectedLabels: true,
          selectedLabelStyle: TypographySystem.caption,
          unselectedLabelStyle: TypographySystem.caption,
          currentIndex: _currentIndex,
          onTap: _onTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: _currentIndex == 0
                    ? ColorSystem.primary_pastelOrange
                    : ColorSystem.neutral_metallicSilver,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.games_rounded,
                color: _currentIndex == 1
                    ? ColorSystem.primary_pastelOrange
                    : ColorSystem.neutral_metallicSilver,
              ),
              label: "Challange",
            ),
            BottomNavigationBarItem(
              icon: Container(
                color: _currentIndex == 2
                    ? Colors.transparent
                    : Colors.transparent,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bubble_chart,
                color: _currentIndex == 3
                    ? ColorSystem.primary_pastelOrange
                    : ColorSystem.neutral_metallicSilver,
              ),
              label: "Community",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: _currentIndex == 4
                    ? ColorSystem.primary_pastelOrange
                    : ColorSystem.neutral_metallicSilver,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
