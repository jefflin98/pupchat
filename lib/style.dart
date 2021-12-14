// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Style {
  Style._();

  static const Color primary = Color(0xFF58D1CA);
  static const Color primaryDark = Color(0xFF00C1B6);
  static const Color secondary = Color(0xFFEF5DA8);

  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFEFEFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xffbdbdbd);
  static const Color greyText = Color(0xffbdbdbd);
  static const Color greyBorder = Color(0xffe7e7e7);
  static const Color greyBackgroud = Color(0xfff6f6f6);
  static const Color greyOpac = Color(0xbbffffff);
  static const Color darkGreyText = Color(0xff828282);
  static const Color no = Color(0x00000000);

  static const optionStyle = TextStyle(fontSize: 32, color: primary);

  static const Map<int, Color> colorPrimary = {
    50: Color(0x8058D1CA),
    100: Color(0x9958D1CA),
    200: Color(0xB358D1CA),
    300: Color(0xCC58D1CA),
    400: Color(0xE658D1CA),
    500: primary,
    600: primary,
    700: primary,
    800: primary,
    900: primary,
  };
  MaterialColor materialPrimary = MaterialColor(0xFF880E4F, colorPrimary);

  static const TextStyle h1 = TextStyle(
    // h4 -> display1
    fontFamily: 'Chocolate',
    // fontWeight: FontWeight.bold,
    fontSize: 45,
    letterSpacing: 0.4,
    height: 0.9,
    color: primary,
  );

  static const TextStyle h1Black = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
  );

  static const TextStyle h1White = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
  );

  static const TextStyle h2 = TextStyle(
    color: Style.greyText,
    fontSize: 16,
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
  );

  static const TextStyle h2White = TextStyle(
    color: Style.white,
    fontSize: 16,
    fontFamily: "Inter",
  );

  static const TextStyle h3 = TextStyle(
    color: Style.greyText,
    fontSize: 14,
    fontFamily: "Inter",
  );

  static const TextStyle h3Grey = TextStyle(
    color: Style.darkGreyText,
    fontSize: 14,
    fontFamily: "Inter",
  );

  static const TextStyle h3White = TextStyle(
    color: Style.white,
    fontSize: 14,
    fontFamily: "Inter",
  );

  static const TextStyle h3WhiteBold = TextStyle(
    color: Style.white,
    fontSize: 14,
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
  );

  static const TextStyle h2Black = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
  );

  static const TextStyle h3Black = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontFamily: "Inter",
  );

  static const TextStyle h3PrimaryBold = TextStyle(
    color: primary,
    fontSize: 14,
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
  );
}
