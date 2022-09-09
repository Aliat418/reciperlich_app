import 'package:flutter/material.dart';

import '../theme/colors.dart';

class TopImageWidget extends StatelessWidget {
  final String image;

  const TopImageWidget(
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
