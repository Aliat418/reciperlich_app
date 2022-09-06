import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../widgets/footer_widget.dart';
import '../model/dish.dart';
import '../resources/recipe_image_widget.dart';
import '../widgets/recipe_instructions_widget.dart';
import '../widgets/recipe_ingredients_widget.dart';
import '../widgets/recipe_title_widget.dart';

class RecipePage extends StatelessWidget {
  final Dish dish;

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
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RecipeImageWidget(dish: dish),
            TitleWidget(dish: dish),
            IngredientsWidget(dish: dish),
            InstructionsWidget(dish: dish),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
