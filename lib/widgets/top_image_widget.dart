import 'package:flutter/material.dart';
import 'package:reciperlich_app/utils/colors.dart';
import 'package:reciperlich_app/utils/images.dart';

class TopImageWidget extends StatelessWidget {
  final Image image;

  const TopImageWidget(this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        AppImages.appBarImage,
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.goldYellow, Colors.transparent],
            ),
          ),
        ),
      ],
    );
  }
}
