import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import '../resources/add_image_view.dart';
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
  final ImagePicker _imagePicker = ImagePicker();
  String newImagePath = '';

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
      appBar: _buildAppBar(),
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
        child: ColoredBox(
          color: Colors.white38,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                _buildImagePicker(),
                _buildInputTitle(),
                _buildInputIngredients(),
                _buildInstructions(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Builder(
                    builder: (context) {
                      return SubmitButtonAction(
                        titleController: _titleController,
                        ingredientsController: _ingredientsController,
                        instructionsController: _instructionsController,
                        image: newImagePath,
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

  AppBar _buildAppBar() {
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
      maxLenth: 25,
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

  Widget _buildImagePicker() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () async {
                final newImage = await _imagePicker.pickImage(
                  source: ImageSource.gallery,
                );
                if (newImage != null) {
                  final sysDir = await getApplicationDocumentsDirectory();
                  final newPath = '${sysDir.path}/${newImage.name}';
                  await newImage.saveTo(newPath);
                  setState(() {
                    newImagePath = newPath;
                  });
                }
              },
              style: _getButtonStyle(),
              child: AddImageView(newImagePath: newImagePath),
            ),
          ),
        ],
      ),
    );
  }

  ButtonStyle _getButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(
            color: AppColors.pastelPink,
          ),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Colors.white,
      ),
    );
  }
}
