import 'package:flutter/material.dart';

import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../theme/colors.dart';
import '../widgets/input_text_widget.dart';
import '../widgets/footer_widget.dart';

class AddRecipePage extends StatefulWidget {
  static const routeName = '/add_recipe_page';
  const AddRecipePage({super.key});

  @override
  State<AddRecipePage> createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController ingredientsController = TextEditingController();
  TextEditingController instructionsController = TextEditingController();
  DishesRepo disheshRepo = DishesRepo();

  void _refreshList() {
    setState(() {});
  }

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add a new recipe',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.pastelPink,
      ),
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InputTextField(
                    maxLenth: 50,
                    maxLines: 2,
                    label: '⭐️ Recipe title: ',
                    controller: titleController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InputTextField(
                    maxLenth: 300,
                    maxLines: 7,
                    label: '🧂 Ingredients: ',
                    controller: ingredientsController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: InputTextField(
                    maxLenth: 700,
                    maxLines: 10,
                    label: ' 🥣 Instructions: ',
                    controller: instructionsController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Builder(
                    builder: (context) {
                      return ElevatedButton(
                        onPressed: () {
                          late final newDish = Dish(
                            title: titleController.text,
                            purchasePlace: 'No purchace place',
                            image: 'No icon',
                            dishColor: AppColors.pastelGreen,
                            ingredients: ingredientsController.text,
                            instructions: instructionsController.text,
                            dishImage: 'No image',
                          );
                          disheshRepo.insert(newDish);
                          _refreshList();
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: AppColors.pastelPink,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                content: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      '/main_food_page',
                                    );
                                  },
                                  child: const Text(
                                    'submmited',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.pastelPink,
                          ),
                        ),
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
}
