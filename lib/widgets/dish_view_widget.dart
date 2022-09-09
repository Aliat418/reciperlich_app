import 'package:flutter/material.dart';

import '../model/dish.dart';
import '../theme/fonts.dart';

class DishView extends StatelessWidget {
  final Dish dish;

  const DishView(
    this.dish, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        '/recipe_page',
        arguments: dish,
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: dish.dishColor,
              borderRadius: const BorderRadius.all(
                Radius.elliptical(15, 15),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TitleText(text: dish.title),
                      const SizedBox(height: 5),
                      DescriptionText(text: dish.purchasePlace),
                    ],
                  ),
                ),
                Image.asset(dish.image),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
