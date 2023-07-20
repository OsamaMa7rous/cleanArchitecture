import 'package:flutter/material.dart';

class ColorManager {
  static Color primaryColor = HexColor.fromHex("#ED9728");
  static Color darkGery = HexColor.fromHex("#525252");
  static Color gery = HexColor.fromHex("#9E9E9E");
  static Color lightGrey = HexColor.fromHex("#707070");
}

extension HexColor on Color {
  static Color fromHex(String hexColor) {
    hexColor = hexColor.replaceAll("#", '');
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
