import 'package:flutter/material.dart';
import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../theme/fonts.dart';

class IngredientsWidget extends StatelessWidget {
  final Dish dish;
  final instructions = DishRepository.getDishes();
  IngredientsWidget({
    required this.dish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: IngredientsText(
              text: '🧂 Igredients: ${dish.ingredients}',
            ),
          ),
        ],
      ),
    );
  }
}
