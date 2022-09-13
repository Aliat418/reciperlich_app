import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/fonts.dart';
import '../widgets/input_text_view.dart';
import '../widgets/footer_view.dart';
import '../widgets/submit_button_action.dart';

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
      appBar: _builAppBar(),
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
              horizontal: 10,
            ),
            child: Column(
              children: [
                _buildInputTitle(),
                _buildInputIngredients(),
                _buildInstructions(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Builder(
                    builder: (context) {
                      return SubmitButtonAction(
                        titleController: _titleController,
                        ingredientsController: _ingredientsController,
                        instructionsController: _instructionsController,
                      );
                    },
                  ),
                ),
                const FooterView(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _builAppBar() {
    return AppBar(
      title: const CustomText(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
        text: 'Add a new recipe',
      ),
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.pastelPink,
    );
  }

  Widget _buildInputTitle() {
    return InputTextView(
      maxLenth: 35,
      maxLines: 1,
      label: '⭐️ Recipe title: ',
      controller: _titleController,
    );
  }

  Widget _buildInputIngredients() {
    return InputTextView(
      maxLenth: 300,
      maxLines: 7,
      label: '🧂 Ingredients: ',
      controller: _ingredientsController,
    );
  }

  Widget _buildInstructions() {
    return InputTextView(
      maxLenth: 700,
      maxLines: 11,
      label: ' 🥣 Instructions: ',
      controller: _instructionsController,
    );
  }
}
