import 'package:cleanarc/presentation/resources/assets_manager.dart';
import 'package:cleanarc/presentation/resources/color_manager.dart';
import 'package:cleanarc/presentation/resources/strings_manager.dart';
import 'package:cleanarc/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../domain/auth_cubit.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var object = AuthCubit.get(context);
        return Scaffold(
          backgroundColor: ColorManager.white,
          appBar: AppBar(
            backgroundColor: ColorManager.white,
            elevation: AppSize.s0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManager.white,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.dark,
            ),
          ),
          body: PageView.builder(
            controller: object.pageController,
            itemCount: object.getSliderData.length,
            onPageChanged: (value) {
              object.changeCurrentIndex(value);
            },
            itemBuilder: (context, index) =>
                OnBoardingScreens(sliderObject: object.getSliderData[index]),
          ),
          bottomSheet: Container(
            height: AppSize.s100,
            color: ColorManager.white,

            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        AppStrings.skip,
                        textAlign: TextAlign.end,
                      )),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class OnBoardingScreens extends StatelessWidget {
  OnBoardingScreens({required this.sliderObject});
  SliderObject? sliderObject;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: AppSize.s40,
        ),
        Padding(
          padding: const EdgeInsets.all(AppSize.s8),
          child: Text(
            sliderObject!.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppSize.s8),
          child: Text(
            sliderObject!.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const SizedBox(
          height: AppSize.s60,
        ),
        SvgPicture.asset(sliderObject!.image,),
      ],
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(
      {required this.title, required this.image, required this.subTitle});
}
