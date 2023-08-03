import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp_flutter/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:loginapp_flutter/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:loginapp_flutter/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:loginapp_flutter/src/constants/colors.dart';
import 'package:loginapp_flutter/src/constants/image_strings.dart';
import 'package:loginapp_flutter/src/constants/sizes.dart';
import 'package:loginapp_flutter/src/constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.AnimateOut();

    var mediaQuery = MediaQuery.of(context);
    var screenSize = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
        backgroundColor: isDarkMode ? SecondaryColor : PrimaryColor,
        body: Stack(children: [
          FadeInAnimation(
              durationInMS: 1200,
              animate: TAnimatedPosition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftAfter: 0,
                leftBefore: 0,
                rightAfter: 0,
                rightBefore: 0,
                topAfter: 0,
                topBefore: 0,
              ),
              child: Container(
                  padding: EdgeInsets.all(DefaultSize),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                    Image(image: AssetImage(WelcomeScreenImage), height: screenSize * 0.6),
                    Column(
                      children: [
                        Text(WelcomeTitle, style: Theme.of(context).textTheme.headlineLarge),
                        Text(WelcomeSubTitle, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center),
                      ],
                    ),
                    Row(children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(Login.toUpperCase()),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: ElevatedButton(
                        onPressed: () {},
                        child: Text(Signup.toUpperCase()),
                      ))
                    ])
                  ])))
        ]));
  }
}
