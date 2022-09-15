import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../widgets/footer_view.dart';
import '../model/dish.dart';
import '../resources/recipe_image_view.dart';
import '../widgets/instructions_view.dart';
import '../widgets/ingredients_view.dart';
import '../widgets/recipe_title_view.dart';

class RecipePage extends StatelessWidget {
  final Dish dish;
  static const routeName = '/recipe_page';

  const RecipePage({
    required this.dish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.pastelPink,
        mini: true,
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RecipeImageView(dish: dish),
            RecipeTitleView(dish: dish),
            IngredientsView(dish: dish),
            InstructionsView(dish: dish),
            const FooterView(),
          ],
        ),
      ),
    );
  }
}
