import 'package:flutter/material.dart';
import 'package:reciperlich_app/model/dish.dart';
import 'package:reciperlich_app/theme/fonts.dart';
import '../pages/recipe_page.dart';

class DishView extends StatelessWidget {
  final Dish dish;

  const DishView(
    this.dish, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToDishPage(context),
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
              mainAxisAlignment: MainAxisAlignment.start,
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
                dish.image,
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToDishPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => RecipePage(
          dish: dish,
        ),
      ),
    );
  }
}
