import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freeme/component/theme/system_color.dart';
import 'package:freeme/component/theme/system_typography.dart';
import 'package:freeme/views/screen_diagnose/screen_diagnose_1.dart';
import 'package:get/get.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorSystem.transparent,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: ColorSystem.neutral_white,
          ),
        ),
        backgroundColor: ColorSystem.primary_darkPurple,
        title: Text(
          "Sign In Account",
          style: TypographySystem.heading2.copyWith(
            color: ColorSystem.neutral_white,
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SvgPicture.asset(
                "assets/images/bg_app_login.svg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: ColorSystem.tertiary_erieBlack.withOpacity(0.5),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 200,
                    child: SvgPicture.asset("assets/images/logo_app_white.svg"),
                  ),
                ),
                const SizedBox(height: 50),
                Form(
                  child: Column(
                    children: [
                      TextField(
                        style: TypographySystem.bodyText1
                            .copyWith(color: ColorSystem.neutral_white),
                        cursorColor: ColorSystem.primary_pastelOrange,
                        decoration: InputDecoration(
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorSystem.primary_pastelOrange,
                            ),
                          ),
                          focusColor: ColorSystem.neutral_metallicSilver,
                          hintText: "Username",
                          hintStyle: TypographySystem.bodyText1.copyWith(
                              color: ColorSystem.neutral_metallicSilver),
                          contentPadding: const EdgeInsets.only(top: 10.0),
                          suffixIcon: const Icon(
                            Icons.person,
                            color: ColorSystem.neutral_metallicSilver,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextField(
                        style: TypographySystem.bodyText1
                            .copyWith(color: ColorSystem.neutral_white),
                        cursorColor: ColorSystem.primary_pastelOrange,
                        decoration: InputDecoration(
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorSystem.primary_pastelOrange,
                            ),
                          ),
                          focusColor: ColorSystem.neutral_metallicSilver,
                          hintText: "Alamat Email",
                          hintStyle: TypographySystem.bodyText1.copyWith(
                              color: ColorSystem.neutral_metallicSilver),
                          contentPadding: const EdgeInsets.only(top: 10.0),
                          suffixIcon: const Icon(
                            Icons.email_rounded,
                            color: ColorSystem.neutral_metallicSilver,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextField(
                        style: TypographySystem.bodyText1
                            .copyWith(color: ColorSystem.neutral_white),
                        cursorColor: ColorSystem.primary_pastelOrange,
                        decoration: InputDecoration(
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorSystem.primary_pastelOrange,
                            ),
                          ),
                          focusColor: ColorSystem.neutral_metallicSilver,
                          hintText: "Kata Sandi",
                          hintStyle: TypographySystem.bodyText1.copyWith(
                              color: ColorSystem.neutral_metallicSilver),
                          contentPadding: const EdgeInsets.only(top: 10.0),
                          suffixIcon: const Icon(
                            Icons.lock_rounded,
                            color: ColorSystem.neutral_metallicSilver,
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      // const SizedBox(height: 50),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: ColorSystem.gradient_icterineBeer,
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          onPressed: () {
                            Get.offAll(const ScreenDiagnose1());
                          },
                          child: Text(
                            "Sign In",
                            style: TypographySystem.subtitle2.copyWith(
                              color: ColorSystem.neutral_white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Expanded(child: Divider()),
                          const SizedBox(width: 10),
                          Text(
                            "Atau",
                            style: TypographySystem.subtitle3.copyWith(
                                color: ColorSystem.neutral_metallicSilver),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(child: Divider()),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.transparent,
                          border: Border.all(
                            color: ColorSystem.primary_electricIndigo,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.g_mobiledata_rounded,
                              color: ColorSystem.neutral_white,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Daftar dengan Google",
                              style: TypographySystem.subtitle3.copyWith(
                                color: ColorSystem.neutral_white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
