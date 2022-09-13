import 'package:flutter/material.dart';

import '../resources/top_image_view.dart';
import '../theme/colors.dart';
import '../theme/fonts.dart';

class AppbarView extends StatelessWidget {
  final String image;
  final String text;

  const AppbarView({
    required this.image,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      title: CustomText(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        text: text,
      ),
      backgroundColor: AppColors.pastelPink,
      expandedHeight: 200,
      elevation: 0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: TopImageView(image),
      ),
    );
  }
}
