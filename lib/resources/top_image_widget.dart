import 'package:flutter/material.dart';
import 'package:reciperlich_app/theme/colors.dart';
import 'package:reciperlich_app/resources/images.dart';

class TopImageWidget extends StatelessWidget {
  final Image image;

  const TopImageWidget(this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        FittedBox(
          child: AppImages.appBarImage,
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
