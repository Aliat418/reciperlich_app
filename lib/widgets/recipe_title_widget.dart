import 'package:flutter/material.dart';

import '../model/dish.dart';
import '../theme/fonts.dart';

class TitleWidget extends StatelessWidget {
  final Dish dish;

  const TitleWidget({
    required this.dish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(15),
      color: dish.dishColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleText(
            text: dish.title,
          ),
        ],
      ),
    );
  }
}
