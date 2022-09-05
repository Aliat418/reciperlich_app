import 'package:flutter/material.dart';
import 'package:reciperlich_app/theme/colors.dart';
import 'package:reciperlich_app/widgets/footer_widget.dart';
import '../model/dish.dart';
import '../resources/recipe_image_widget.dart';
import '../widgets/recipe_instructions_widget.dart';
import '../widgets/recipe_ingredients_widget.dart';
import '../widgets/recipe_title_widget.dart';
import 'main_food_page.dart';

class RecipePage extends StatelessWidget {
  final Dish dish;
  const RecipePage({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.pastelPink,
          onPressed: () {
            _navigateToHome(context);
          },
          child: const Icon(Icons.arrow_back)),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RecipeImageWidget(dish: dish),
            TitleWidget(dish: dish),
            IngredientsWidget(dish: dish),
            InstructionsWidget(dish: dish),
            const FooterWidget()
          ],
        ),
      ),
    );
  }

  void _navigateToHome(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MainFoodPage(),
      ),
    );
  }
}
