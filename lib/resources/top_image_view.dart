import 'package:flutter/material.dart';

import '../theme/colors.dart';

class TopImageView extends StatelessWidget {
  final String image;

  const TopImageView(
    this.image, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        FittedBox(
          fit: BoxFit.cover,
          child: Image.asset(image),
        ),
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.pastelPink,
                Colors.transparent,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
