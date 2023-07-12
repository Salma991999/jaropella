import 'package:flutter/material.dart';

class AppColors {
  //Primary
  static const Color scaffold = Color(0xffF8F3F3);
  static const Color primary = Color(0xffC49B6D);
  static const Color white =  Color(0xffFFFFFF);
  static const Color darkWight =  Color(0xffF6F6F6);
  static  Color lightBrown =  Color(0xff5B4B44).withOpacity(.5);
  static const Color black = Color(0xff000000);
  static  Color blackOpacity7 = Color(0xff000000).withOpacity(.7);

  static Color red = const Color(0xffBA1717);
  static const Color lightGreen = Color(0xffA4E375);
  static const Color green = Color(0xff4BBC71);
  static const Color yellow = Color(0xffFFB41E);
  static  Color disableBottom = const Color(0xffC49B6D).withOpacity(.5);

  static const Color transparent = Colors.transparent;

  static const Color numBadGrey = Color(0xffBF8F8F8);
  static const Color grey = Color(0xff9E9E9D);
  static const Color medGrey = Color(0xffA4A4A4);
  static const Color lightGrey = Color(0xffF6F6F6);

  static const Color darkShadow = Color(0xff707070);
  static const Color lightShadow = Color(0xffC9C9C7);

  //background
  static Color darkScaffold = const Color(0xff2C2C2E);
  static Color darkCardBackground = const Color(0xff373737);
  static Color darkCard = const Color(0xff707070);

// BoxShadow ---------------------------------------------------------------------------------------------------------
  static BoxShadow shadowCard = const BoxShadow(
    color: lightShadow,
    blurRadius: 6,
    offset: Offset(0, 3),
  );
  static BoxShadow shadowCardMedium = const BoxShadow(
    color: lightShadow,
    blurRadius: 4,
    offset: Offset(0, 2),
  );
  static BoxShadow shadowCardLow = const BoxShadow(
    color: lightShadow,
    blurRadius: 2,
    offset: Offset(0, 1),
  );
}
