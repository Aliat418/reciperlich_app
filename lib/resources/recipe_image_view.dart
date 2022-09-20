import 'dart:io';

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
    final localDishImage = dish.image;
    if (localDishImage != null) {
      return Image.file(File(localDishImage));
    }
    return const SizedBox.shrink();
  }
}
