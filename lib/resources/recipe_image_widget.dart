import 'package:flutter/material.dart';
import '../data/dishes_repository.dart';
import '../model/dish.dart';

class RecipeImageWidget extends StatelessWidget {
  final Dish dish;
  final dishImage = DishRepository.getDish();

  RecipeImageWidget({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [dish.dishImage],
    );
  }
}
