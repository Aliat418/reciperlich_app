import 'package:flutter/material.dart';

import '../model/dish.dart';
import '../theme/colors.dart';
import '../theme/fonts.dart';

class InstructionsView extends StatelessWidget {
  final Dish dish;

  const InstructionsView({
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
            child: CustomText(
              text: '🥣 Instructions: ${dish.instructions}',
              color: AppColors.mediumPurple,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
