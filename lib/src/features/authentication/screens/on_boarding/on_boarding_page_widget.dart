import 'package:flutter/material.dart';
import 'package:loginapp_flutter/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size; // Getting screen size

    return Container(
      // padding: EdgeInsets.all(),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image), height: screenSize.height * 0.4),
          Column(
            children: [
              Text(model.title, style: Theme.of(context).textTheme.headlineLarge),
              Text(model.subtitle, textAlign: TextAlign.center),
              SizedBox(
                height: 30,
              ),
              Text(model.counterText, style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
        ],
      ),
    );
  }
}
