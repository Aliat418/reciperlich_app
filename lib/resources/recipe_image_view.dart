import 'package:flutter/material.dart';

import '../model/dish.dart';

class RecipeImageView extends StatelessWidget {
  final Dish dish;

  const RecipeImageView({
    required this.dish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildImage(),
      ],
    );
  }

  Widget _buildImage() {
    final localDishImage = dish.dishImage;
    if (localDishImage != null) {
      return Image.asset(localDishImage);
    }
    return const SizedBox.shrink();
  }
}
