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
    final File localDishImage = File(dish.image!);
    final bool isImageExcists = localDishImage.existsSync();

    if (isImageExcists == true) {
      return Image.file(
        localDishImage,
      );
    } else {
      return Image.asset('assets/images/no-image.png');
    }
  }
}
