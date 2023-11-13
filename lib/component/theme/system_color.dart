import 'package:flutter/material.dart';

class ColorSystem {
  ColorSystem._();
  static const Color primary_darkPurple = Color(0xff281b41);
  static const Color primary_electricIndigo = Color(0xff7622ff);
  static const Color primary_pastelOrange = Color(0xffffb942);

  static const Color tertiary_erieBlack = Color(0xff1a181d);
  static const Color negative_fieryRose = Color(0xffff517b);

  static const Color neutral_white = Color(0xffffffff);
  static const Color neutral_metallicSilver = Color(0xffa7a4ae);

  static const LinearGradient gradient_icterineBeer = LinearGradient(
    colors: [
      Color(0xfffff960),
      Color(0xffff8c22),
    ],
  );
  static const LinearGradient gradient_crayolaBlue = LinearGradient(
    colors: [
      Color(0xff5adbed),
      Color(0xff29aed8),
    ],
  );
  static const LinearGradient gradient_turquoiseGreen = LinearGradient(
    colors: [
      Color(0xffa1f1c7),
      Color(0xff23bf4e),
    ],
  );
  static const LinearGradient gradient_awesomePurple = LinearGradient(
    colors: [
      Color(0xffff60e6),
      Color(0xffff2264),
    ],
  );
}
