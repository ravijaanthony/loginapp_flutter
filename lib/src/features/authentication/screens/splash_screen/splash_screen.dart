import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginapp_flutter/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:loginapp_flutter/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:loginapp_flutter/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:loginapp_flutter/src/constants/colors.dart';
import 'package:loginapp_flutter/src/constants/image_strings.dart';
import 'package:loginapp_flutter/src/constants/sizes.dart';
import 'package:loginapp_flutter/src/constants/text_strings.dart';
// import 'package:loginapp_flutter/src/features/authentication/screens/splash_screen/fade_in_animation_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  // final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.AnimateIn();

    return Scaffold(
      body: Stack(
        children: [
          /// Animation 1
          FadeInAnimation(
            durationInMS: 1600,
            animate: TAnimatedPosition(topAfter: 0, topBefore: -30, leftBefore: -30, leftAfter: 0),
            child: Image(
              image: AssetImage(SplashTopIcon),
            ),
          ),

          /// Animation 2
          FadeInAnimation(
            durationInMS: 2000,
            animate: TAnimatedPosition(topBefore: 80, topAfter: 80, leftBefore: -80, leftAfter: DefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppName, style: Theme.of(context).textTheme.headlineLarge),
                Text(AppTagLine, style: Theme.of(context).textTheme.headlineMedium),
              ],
            ),
          ),

          /// Animation 3
          FadeInAnimation(
            durationInMS: 2400,
            animate: TAnimatedPosition(bottomBefore: 0, bottomAfter: 100),
            child: Image(image: AssetImage(SplashImage)),
          ),

          /// Animation 4
          FadeInAnimation(
            durationInMS: 2400,
            animate: TAnimatedPosition(bottomBefore: 0, bottomAfter: 60, rightBefore: DefaultSize, rightAfter: DefaultSize),
            child: Container(
              width: SplashContainerSize,
              height: SplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: PrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
