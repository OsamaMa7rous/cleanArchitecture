import 'package:cleanarc/presentation/color_manager.dart';
import 'package:cleanarc/presentation/font_manager.dart';
import 'package:cleanarc/presentation/style_manager.dart';
import 'package:cleanarc/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // Todo: main Colors in the app
    primaryColor: ColorManager.primary,
    primaryColorDark: ColorManager.darkPrimary,
    primaryColorLight: ColorManager.primaryOpacity70,
    disabledColor: ColorManager.grey1,

    //ripple color
    splashColor: ColorManager.primaryOpacity70,

    // will be in case of disabled button for ex
    colorScheme: ThemeData().colorScheme.copyWith(
          secondary: ColorManager.grey2, // Set the accent color to blue
        ),

    // Todo: card view in the app
    cardTheme: CardTheme(
      color: ColorManager.white,
      elevation: AppSize.s4,
      shadowColor: ColorManager.grey,
    ),
    // Todo: appbar
    appBarTheme: AppBarTheme(
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      centerTitle: true,
      titleTextStyle:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s12)
              as TextStyle,
    ),
    // Todo: button
    buttonTheme: ButtonThemeData(
      disabledColor: ColorManager.grey1,
      shape: StadiumBorder(),
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),

    //elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s12)),
      textStyle: getRegularStyle(color: ColorManager.primary) as TextStyle,
      )
    )

    // Todo: text theme

    // Todo: input decoration
  );
}
