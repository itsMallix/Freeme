import 'package:flutter/material.dart';
import 'package:freeme/component/screen_onboarding/component_dots.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/model/model_onBoarding/model_onboarding.dart';

class ScreenOnBoarding extends StatefulWidget {
  const ScreenOnBoarding({super.key});

  @override
  State<ScreenOnBoarding> createState() => _ScreenOnBoardingState();
}

class _ScreenOnBoardingState extends State<ScreenOnBoarding> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<OnBoarding> onboardingData = [
    OnBoarding(
      heading: "Selamat Datang di",
      title: "Freeme",
      image: "",
      subtitle:
          "Dapatkan pengalaman pengguna aplikasi yang menyenangkan dan mudah. Siapkan diri Anda untuk menjadi pemenang dalam melawan kecanduan PMO dengan Freeme!",
    ),
    OnBoarding(
      heading: "Kemajuan dalam Game",
      title: "Kemajuan dalam Hidup",
      image: "",
      subtitle:
          "Buka semua fitur dalam game dengan menyelesaikan challenge yang ada. Dapatkan karakter baru, peliharaan, atribut dan item lainnya sebagai hadia untuk mencapai perjuangan Anda!",
    ),
    OnBoarding(
      heading: "Kalahkan raksasa",
      title: "Kalahkan Kebiasaan PMO",
      image: "",
      subtitle:
          "Pertahankan tujuan Anda agar tetap pada jalurnya dengan bantuan dari teman komunitas. Beri dukungan satu sama lain untuk bertempur dan saling berbenah bersama!",
    ),
  ];

  Color getScaffoldColor() {
    switch (_pageIndex) {
      case 0:
        return ColorSystem.primary_electricIndigo;
      case 1:
        return ColorSystem.secondary_cyanCornflower;
      case 2:
        return ColorSystem.negative_fieryRose;
      default:
        return ColorSystem.primary_darkPurple;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getScaffoldColor(),
      appBar: AppBar(
        backgroundColor: getScaffoldColor(),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: TypographySystem.subtitle3.copyWith(
                color: ColorSystem.neutral_white,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: onboardingData.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnboardingContent(
                    heading: onboardingData[index].heading,
                    title: onboardingData[index].title,
                    image: onboardingData[index].image,
                    subtitile: onboardingData[index].subtitle,
                  ),
                ),
              ),
              Row(
                children: [
                  const Spacer(),
                  ...List.generate(
                    onboardingData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: DotIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String heading;
  final String title;
  final String image;
  final String subtitile;

  const OnboardingContent({
    super.key,
    required this.heading,
    required this.title,
    required this.image,
    required this.subtitile,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Text(
          heading,
          textAlign: TextAlign.center,
          style: TypographySystem.contentText.copyWith(
            color: ColorSystem.neutral_white,
          ),
        ),
        Text(
          title,
          style: TypographySystem.heading1.copyWith(
            color: ColorSystem.neutral_white,
          ),
        ),
        const SizedBox(height: 30),
        Container(
          height: 300,
          width: double.infinity,
          color: ColorSystem.neutral_white,
        ),
        const SizedBox(height: 30),
        Text(
          subtitile,
          textAlign: TextAlign.center,
          style: TypographySystem.bodyText2.copyWith(
            color: ColorSystem.neutral_white,
          ),
        ),
      ],
    );
  }
}
