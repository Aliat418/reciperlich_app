//not final page!!!

import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../widgets/footer_widget.dart';

class AddRecipePage extends StatefulWidget {
  static const routeName = '/add recipe page';
  const AddRecipePage({super.key});

  @override
  State<AddRecipePage> createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController ingredientsController = TextEditingController();
  TextEditingController instructionsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.pastelPink,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.pastelPink,
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/main food page',
          );
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
                  child: TextField(
                    maxLength: 50,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    controller: titleController,
                    decoration: const InputDecoration(
                      alignLabelWithHint: true,
                      floatingLabelStyle: TextStyle(
                        color: AppColors.darkPurple,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.pastelPink,
                        ),
                      ),
                      labelText: 'Recipe Title:',
                      labelStyle: TextStyle(
                        color: AppColors.darkPurple,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(15, 15),
                        ),
                        borderSide: BorderSide(
                          color: AppColors.pastelPink,
                          //width: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    maxLength: 500,
                    maxLines: 7,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    controller: ingredientsController,
                    decoration: const InputDecoration(
                      alignLabelWithHint: true,
                      floatingLabelStyle: TextStyle(
                        color: AppColors.darkPurple,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.pastelPink,
                        ),
                      ),
                      labelText: '🧂 Ingredients: ',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(15, 15),
                        ),
                        borderSide: BorderSide(
                          color: AppColors.pastelPink,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    maxLength: 500,
                    maxLines: 15,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    controller: instructionsController,
                    decoration: const InputDecoration(
                      floatingLabelStyle: TextStyle(
                        color: AppColors.darkPurple,
                      ),
                      alignLabelWithHint: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.pastelPink),
                      ),
                      labelText: '🥣 Instructions: ',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(15, 15),
                        ),
                        borderSide: BorderSide(
                          color: AppColors.pastelPink,
                          //width: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Builder(
                    builder: (context) {
                      return ElevatedButton(
                        onPressed: () => 'PRESSED',
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.pastelPink,
                          ),
                        ),
                        child: const Text('Submit recipe'),
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
