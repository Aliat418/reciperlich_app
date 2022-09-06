import 'package:flutter/material.dart';
import '../model/dish.dart';

class RecipeImageWidget extends StatelessWidget {
  final Dish dish;

  RecipeImageWidget({
    Key? key,
    required this.dish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(dish.dishImage),
      ],
    );
  }
}
