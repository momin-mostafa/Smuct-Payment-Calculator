import 'package:flutter/material.dart';

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

class UIColor {
  //home
  static Color homeScreenColor = HexColor.fromHex('#2C394B');
  static Color homeAppBar = HexColor.fromHex('424874');
  static Color elevatedButtonColor = HexColor.fromHex("424874");
  static Color elevatedButtonSplash = Colors.deepOrange;
  static Color elevatedButtonText = HexColor.fromHex("F4EEFF");
  static Color customExpenseButton = HexColor.fromHex("A6B1E1");
  static Color customExpenseButtonIcon = HexColor.fromHex("424874");
  static Color DrawerButtonColor = HexColor.fromHex('#FF4C29');

  //studentPageIntroCard
  static Color studentPageIntroBackground = HexColor.fromHex('A6B1E1');
  static Color studentPageIntroTitle = HexColor.fromHex('424874');
  static Color studentPageIntroText = HexColor.fromHex('EEEEEE');

  //teacherPageIntro/ teacherPage
  static Color teacherPageIntroBackground = HexColor.fromHex('A6B1E1');
  static Color teacherPageTitle = HexColor.fromHex('424874');
  static Color teacherPageBodyText = HexColor.fromHex('EEEEEE');

  //teacher List Page
  static Color teacherListAppBar = HexColor.fromHex('424874');

  //teacher Cards
  static Color teacherCardBackground = HexColor.fromHex('A6B1E1');
  static Color teacherCardButtonBackground = HexColor.fromHex('F4EEFF');
}
