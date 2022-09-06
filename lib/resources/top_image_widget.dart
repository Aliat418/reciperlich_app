import 'package:flutter/material.dart';
import 'package:reciperlich_app/theme/colors.dart';

class TopImageWidget extends StatelessWidget {
  final String image;

  const TopImageWidget(
    this.image, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        FittedBox(
          child: Image.asset(image),
          fit: BoxFit.cover,
        ),
        Container(
          decoration: const BoxDecoration(
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
