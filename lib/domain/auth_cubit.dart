import 'dart:async';

import 'package:cleanarc/presentation/onboarding/onboarding.dart';
import 'package:cleanarc/presentation/resources/assets_manager.dart';
import 'package:cleanarc/presentation/resources/routes_manager.dart';
import 'package:cleanarc/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation/onboarding/onboarding.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(context) => BlocProvider.of(context);
  // Todo: for onBoarding screens
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  List<SliderObject> getSliderData = [
    SliderObject(
        title: AppStrings.onBoardingTitle1,
        image: AssetsImages.onBoardingLogo1,
        subTitle: AppStrings.onBoardingSubTitle1),
    SliderObject(
        title: AppStrings.onBoardingTitle2,
        image: AssetsImages.onBoardingLogo2,
        subTitle: AppStrings.onBoardingSubTitle2),
    SliderObject(
        title: AppStrings.onBoardingTitle3,
        image: AssetsImages.onBoardingLogo3,
        subTitle: AppStrings.onBoardingSubTitle3),
    SliderObject(
        title: AppStrings.onBoardingTitle4,
        image: AssetsImages.onBoardingLogo4,
        subTitle: AppStrings.onBoardingSubTitle4),
  ];

  int getPreviousIndex() {
    print(currentIndex);

    int previousIndex = currentIndex--;
    // print(previousIndex);

    if (previousIndex == 0) {
      //  print("the currentIndex $currentIndex");

      currentIndex = getSliderData.length - 1;
      // print("the currentIndexAfter $currentIndex");

      emit(ChangCurrentIndexState());
    }
    return currentIndex;
  }

  int getNextIndex() {
    int nextIndex = currentIndex++;

    if (nextIndex >= getSliderData.length - 1) {
      currentIndex = 0;

      emit(ChangCurrentIndexState());
    }

    return currentIndex;
  }

  void changeCurrentIndex(int index) {
    currentIndex = index;
    emit(ChangCurrentIndexState());
  }
}
