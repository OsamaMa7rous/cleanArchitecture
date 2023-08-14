
import 'package:cleanarc/presentation/font_manager.dart';
import 'package:flutter/material.dart';

// private

TextStyle _getTextStyle({
  required Color color,
  required FontWeight fontWeight,
  required double fontSize,
  required String fontFamily,
}) {
  return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontFamily: fontFamily);
}

// regular text style

TextStyle getRegularStyle({
  required Color color,
  double fontSize = FontSize.s12,
}) {
  return _getTextStyle(
      color: color,
      fontWeight: FontWeightManger.regular,
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily);
}

// medium text style

TextStyle getMediumStyle({
  required Color color,
  double fontSize = FontSize.s12,
}) {
  return _getTextStyle(
      color: color,
      fontWeight: FontWeightManger.medium,
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily);
}

// light text style

TextStyle getLightStyle({
  required Color color,
  double fontSize = FontSize.s12,
}) {
  return _getTextStyle(
      color: color,
      fontWeight: FontWeightManger.light,
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily);
}
// bold text style

TextStyle getBoldStyle({
  required Color color,
  double fontSize = FontSize.s12,
}) {
  return _getTextStyle(
      color: color,
      fontWeight: FontWeightManger.bold,
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily);
}
// SemiBold text style

TextStyle getSemiBoldStyle({
  required Color color,
  double fontSize = FontSize.s12,
}) {
  return _getTextStyle(
      color: color,
      fontWeight: FontWeightManger.semiBold,
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily);
}
