import 'package:cleanarc/presentation/resources/color_manager.dart';
import 'package:cleanarc/presentation/resources/font_manager.dart';
import 'package:cleanarc/presentation/resources/style_manager.dart';
import 'package:cleanarc/presentation/resources/values_manager.dart';
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
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s12),
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
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12)),
        textStyle: getRegularStyle(color: ColorManager.primary),
      )),

      // Todo: text theme
      textTheme: TextTheme(
        //headline1
        displayLarge: getSemiBoldStyle(
            color: ColorManager.darkGrey, fontSize: FontSize.s16),

        //subtitle1
        titleMedium: getMediumStyle(
            color: ColorManager.lightGrey, fontSize: FontSize.s14),

        // caption
        bodySmall: getRegularStyle(color: ColorManager.grey1),
        // body text1
        bodyLarge: getRegularStyle(color: ColorManager.grey),
      ),
      // Todo: input decoration

      inputDecorationTheme: InputDecorationTheme(
        hintStyle: getRegularStyle(color: ColorManager.grey1),
        labelStyle: getMediumStyle(color: ColorManager.darkGrey),
        errorStyle: getRegularStyle(color: ColorManager.error),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.grey,
            width: AppSize.s1_5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.error,
            width: AppSize.s1_5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        ),
      ));
}
