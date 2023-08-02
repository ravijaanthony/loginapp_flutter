// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:loginapp_flutter/src/constants/colors.dart';
import 'package:loginapp_flutter/src/constants/image_strings.dart';
import 'package:loginapp_flutter/src/constants/text_strings.dart';
import 'package:loginapp_flutter/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:loginapp_flutter/src/features/authentication/models/model_on_boarding.dart';
import 'package:loginapp_flutter/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final obController = OnBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages, // The 3 pages
            liquidController: obController.liquidController,
            onPageChangeCallback: obController.onPageChangedCallBack,
            slideIconWidget: Icon(Icons.arrow_back_ios_new),
            enableSideReveal: true,
          ),

          /// The arrow button
          Positioned(
              bottom: 30,
              child: OutlinedButton(
                onPressed: () => obController.animateToNextSlide(),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.black26),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: BlackColor, shape: BoxShape.circle),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              )),

          /// Skip button
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () => obController.skip(),
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.grey),
                ),
              )),

          /// The indicator on the bottom
          Obx(
            () => Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                  count: 3,
                  activeIndex: obController.currentPage.value, // Calling the currentPage value on obController
                  effect: WormEffect(activeDotColor: Color(0xFF272727), dotHeight: 5),
                )),
          )
        ],
      ),
    );
  }
}
