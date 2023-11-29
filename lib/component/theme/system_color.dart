import 'package:flutter/material.dart';

class ColorSystem {
  ColorSystem._();
  static const Color primary_darkPurple = Color(0xff281b41);
  static const Color primary_electricIndigo = Color(0xff7622ff);
  static const Color primary_pastelOrange = Color(0xffffb942);

  static const Color secondary_cyanCornflower = Color(0xff2895CD);
  static const Color secondary_grapePurple = Color(0xff6132B4);
  static const Color secondary_ufoGreen = Color(0xff3CDE6A);
  static const Color secondary_rajah = Color(0xffFEBE5D);
  static const Color secondary_aztecGold = Color(0xffBE8E46);

  static const Color tertiary_erieBlack = Color(0xff1a181d);
  static const Color tertiary_paleViolet = Color(0xffBCA8FF);
  static const Color tertiary_gunMetal = Color(0xff30283F);
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
  static const LinearGradient gradient_blindDark = LinearGradient(
    colors: [
      Color(0xff281b41),
      Color(0xff281b41),
    ],
  );
  static const RadialGradient gradient_voidPurple = RadialGradient(
    colors: [
      Color(0xffF260FF),
      Color(0xff7622FF),
    ],
  );
}
