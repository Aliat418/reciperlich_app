import 'package:flutter/material.dart';

import 'colors.dart';

class TitleText extends StatelessWidget {
  final String text;

  const TitleText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.darkPurple,
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  final String text;

  const DescriptionText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: AppColors.darkPurple,
      ),
    );
  }
}

class DishTitleText extends StatelessWidget {
  final String text;

  const DishTitleText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.darkPurple,
      ),
    );
  }
}

class IngredientsText extends StatelessWidget {
  final String text;

  const IngredientsText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: AppColors.mediumPurple,
      ),
    );
  }
}

class InstructionsText extends StatelessWidget {
  final String text;

  const InstructionsText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: AppColors.darkPurple,
      ),
    );
  }
}
