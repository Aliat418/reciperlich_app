import 'package:flutter/material.dart';

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
      home: MainFoodPage(),
      routes: {
        MainFoodPage.routeName: (context) => MainFoodPage(),
        AddRecipePage.routeName: (context) => const AddRecipePage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == RecipePage.routeName) {
          final arguments = settings.arguments! as RecipePage;
          return MaterialPageRoute(
            builder: (context) {
              return RecipePage(
                dish: arguments.dish,
              );
            },
          );
        }
        assert(false, 'Need to implement recipe page arguments');

        return null;
      },
    );
  }
}
