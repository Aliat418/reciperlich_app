import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../resources/top_image_widget.dart';

class AppbarWidget extends StatelessWidget {
  final String image;
  final String text;

  const AppbarWidget({
    required this.image,
    required this.text,
    super.key,
  });

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
