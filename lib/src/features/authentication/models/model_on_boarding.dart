import 'dart:ui';

class OnBoardingModel {
  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.counterText,
    required this.bgColor,
  });

  final String image;
  final String title;
  final String subtitle;
  final String counterText;
  final Color bgColor;
}
