import 'package:flutter/material.dart';
import 'package:reciperlich_app/theme/colors.dart';
import 'package:reciperlich_app/resources/top_image_widget.dart';

class AppbarWidget extends StatelessWidget {
  final Image image;
  final String text;

  const AppbarWidget({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: AppColors.pastelPink,
      expandedHeight: 200,
      elevation: 0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: TopImageWidget(image),
      ),
    );
  }
}
