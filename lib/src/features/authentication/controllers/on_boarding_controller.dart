import 'package:get/get.dart';

import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:loginapp_flutter/src/constants/colors.dart';
import 'package:loginapp_flutter/src/constants/image_strings.dart';
import 'package:loginapp_flutter/src/constants/text_strings.dart';
import 'package:loginapp_flutter/src/features/authentication/models/model_on_boarding.dart';
import 'package:loginapp_flutter/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final liquidController = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    /// Page 1
    OnBoardingPageWidget(
        model: OnBoardingModel(
      image: OnBoardingImage1,
      title: OnBoardingTitle1,
      subtitle: OnBoardingSubTitle1,
      counterText: OnBoardingCounter1,
      bgColor: OnBoardingPage1Color,
      // height: screenSize.height,
    )),

    /// Page 2
    OnBoardingPageWidget(
        model: OnBoardingModel(
      image: OnBoardingImage2,
      title: OnBoardingTitle2,
      subtitle: OnBoardingSubTitle2,
      counterText: OnBoardingCounter2,
      bgColor: OnBoardingPage2Color,
      // height: screenSize.height,
    )),

    /// Page 3
    OnBoardingPageWidget(
        model: OnBoardingModel(
      image: OnBoardingImage3,
      title: OnBoardingTitle3,
      subtitle: OnBoardingSubTitle3,
      counterText: OnBoardingCounter3,
      bgColor: OnBoardingPage3Color,
      // height: screenSize.height,
    )),
  ];

  onPageChangedCallBack(int activePageIndex) => currentPage.value = activePageIndex;

  skip() => liquidController.jumpToPage(page: 2); // Skip button

  animateToNextSlide() {
    int nextPage = liquidController.currentPage + 1;
    liquidController.animateToPage(page: nextPage);
  }
}
