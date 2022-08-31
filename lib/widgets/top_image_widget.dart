import 'package:flutter/material.dart';
import 'package:reciperlich_app/utils/colors.dart';

class TopImageWidget extends StatelessWidget {
  final Image image;

  const TopImageWidget(this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/sweetsFont.jpg',
          fit: BoxFit.cover,
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.brightGreen, Colors.transparent],
            ),
          ),
        ),
      ],
    );
  }
}
