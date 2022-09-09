import 'package:flutter/material.dart';

import '../theme/colors.dart';
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

class InputTextField extends StatelessWidget {
  const InputTextField({
    required this.controller,
    required this.label,
    required this.maxLenth,
    required this.maxLines,
    super.key,
  });

  final TextEditingController controller;
  final String label;
  final int maxLenth;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLenth,
      maxLines: maxLines,
      style: const TextStyle(
        fontSize: 20,
      ),
      controller: controller,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        floatingLabelStyle: const TextStyle(
          color: AppColors.darkPurple,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.pastelPink,
          ),
        ),
        labelText: label,
        labelStyle: const TextStyle(
          fontSize: 20,
          color: AppColors.darkPurple,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.elliptical(15, 15),
          ),
          borderSide: BorderSide(
            color: AppColors.pastelPink,
            //width: 0,
          ),
        ),
      ),
    );
  }
}
