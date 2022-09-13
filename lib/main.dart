import 'package:flutter/material.dart';

import 'model/dish.dart';
import 'pages/add_recipe_page.dart';
import 'pages/main_food_page.dart';
import 'pages/recipe_page.dart';

void main() => runApp(const ReciperlichApp());

class ReciperlichApp extends StatelessWidget {
  const ReciperlichApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReciperlichApp',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const MainFoodPage(),
      routes: {
        MainFoodPage.routeName: (context) => const MainFoodPage(),
        AddRecipePage.routeName: (context) => const AddRecipePage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == RecipePage.routeName) {
          final dish = settings.arguments! as Dish;
          return MaterialPageRoute(
            builder: (context) {
              return RecipePage(
                dish: dish,
              );
            },
          );
        }
        return null;
      },
    );
  }
}
