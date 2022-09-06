import 'package:flutter/material.dart';
import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../theme/fonts.dart';

class InstructionsWidget extends StatelessWidget {
  final ingredients = DishRepository.getDishes();
  final Dish dish;

  InstructionsWidget({
    required this.dish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: InstructionsText(
              text: '🥣 Instructions: ${dish.instructions}',
            ),
          ),
        ],
      ),
    );
  }
}
