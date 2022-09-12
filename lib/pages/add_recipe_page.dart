import 'package:flutter/material.dart';

import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../resources/images.dart';
import '../theme/colors.dart';
import '../utils/alert_dialogs.dart';
import '../widgets/input_text_widget.dart';
import '../widgets/footer_widget.dart';

class AddRecipePage extends StatefulWidget {
  static const routeName = '/add_recipe_page';

  const AddRecipePage({super.key});

  @override
  State<AddRecipePage> createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _ingredientsController = TextEditingController();
  final TextEditingController _instructionsController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _ingredientsController.dispose();
    _instructionsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarMethod(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.pastelPink,
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: ColoredBox(
          color: Colors.white38,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: Column(
              children: [
                InputTextField(
                  maxLenth: 35,
                  maxLines: 1,
                  label: '⭐️ Recipe title: ',
                  controller: _titleController,
                ),
                InputTextField(
                  maxLenth: 300,
                  maxLines: 7,
                  label: '🧂 Ingredients: ',
                  controller: _ingredientsController,
                ),
                InputTextField(
                  maxLenth: 700,
                  maxLines: 10,
                  label: ' 🥣 Instructions: ',
                  controller: _instructionsController,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Builder(
                    builder: (context) {
                      return ElevatedButton(
                        onPressed: () {
                          late final newDish = _newDishMethod();
                          DishesRepo.insert(newDish);
                          Navigator.pop(context, newDish);
                          showDialog(
                            context: context,
                            builder: (context) {
                              return SubmmitDialogWidget(newDish: newDish);
                            },
                          );
                        },
                        style: _buttonStyleMethod(),
                        child: const Text(
                          'Submit recipe',
                        ),
                      );
                    },
                  ),
                ),
                const FooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Dish _newDishMethod() {
    return Dish(
      title: _titleController.text,
      purchasePlace: 'No  place',
      dishColor: AppColors.pastelGreen,
      ingredients: _ingredientsController.text,
      instructions: _instructionsController.text,
      image: AppImages.pizza,
      dishImage: AppImages.pizzaDish,
    );
  }

  AppBar _appBarMethod() {
    return AppBar(
      title: const Text(
        'Add a new recipe',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.pastelPink,
    );
  }

  ButtonStyle _buttonStyleMethod() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        AppColors.pastelPink,
      ),
    );
  }
}
