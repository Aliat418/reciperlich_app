import 'package:flutter/material.dart';

import '../model/dish.dart';
import '../theme/colors.dart';
import '../theme/fonts.dart';

class IngredientsView extends StatelessWidget {
  final Dish dish;

  const IngredientsView({
    required this.dish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomText(
              text: '🧂 Igredients: ${dish.ingredients}',
              color: AppColors.mediumPurple,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
