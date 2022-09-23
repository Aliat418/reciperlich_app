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
      final File localDishImagefile = File(localDishImage);
      final bool imageExists = localDishImagefile.existsSync();
      if (imageExists == true) {
        return Image.file(
          localDishImagefile,
        );
      }
    }
    return Image.asset('assets/images/no-image.png');
  }
}
