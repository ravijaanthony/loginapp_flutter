import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:loginapp_flutter/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:loginapp_flutter/src/constants/image_strings.dart';
// import 'package:loginapp_flutter/src/features/authentication/screens/splash_screen/fade_in_animation_controller.dart';

// class FadeInAnimation extends StatelessWidget {
//   FadeInAnimation({
//     super.key,
//     required this.splashController,
//     required this.durationInMS,
//   });
//
//   final SplashScreenController splashController;
//   final int durationInMS;
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => AnimatedPositioned(
//           duration: Duration(milliseconds: durationInMS),
//           top: splashController.animate.value ? 0 : -30,
//           left: splashController.animate.value ? 0 : -30,
//           child: AnimatedOpacity(
//             duration: Duration(milliseconds: durationInMS),
//             opacity: splashController.animate.value ? 0 : -30,
//             child: Image(
//               image: AssetImage(SplashTopIcon),
//             ),
//           ),
//         ));
//   }
// }

class TAnimatedPosition {
  TAnimatedPosition({
    this.topBefore,
    this.bottomBefore,
    this.leftBefore,
    this.rightBefore,
    this.topAfter,
    this.bottomAfter,
    this.leftAfter,
    this.rightAfter,
  });

  final double? topBefore, bottomBefore, leftBefore, rightBefore;
  final double? topAfter, bottomAfter, leftAfter, rightAfter;
}
