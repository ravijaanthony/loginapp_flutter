import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp_flutter/src/constants/colors.dart';
import 'package:loginapp_flutter/src/constants/image_strings.dart';
import 'package:loginapp_flutter/src/constants/sizes.dart';
import 'package:loginapp_flutter/src/constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenSize = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? SecondaryColor : PrimaryColor,
      body: Container(
        padding: EdgeInsets.all(DefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(WelcomeScreenImage), height: screenSize * 0.6),
            Column(
              children: [
                Text(WelcomeTitle, style: Theme.of(context).textTheme.headlineLarge),
                Text(WelcomeSubTitle, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center),
              ],
            ),
            Row(
              children: [
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
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
