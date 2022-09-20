import 'package:flutter/material.dart';

import '../model/dish.dart';
import '../theme/colors.dart';
import '../theme/custom_text.dart';

class RecipeTitleView extends StatelessWidget {
  final Dish dish;

  const RecipeTitleView({
    required this.dish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(15),
      color: Color(dish.dishColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 340,
            child: CustomText(
              textAlign: TextAlign.center,
              text: dish.title,
              fontSize: 18,
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
