import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../resources/add_image_view.dart';
import '../theme/colors.dart';
import '../theme/custom_text.dart';
import '../utils/alert_dialogs.dart';
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
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    top: 5,
                  ),
                  child: Builder(
                    builder: (context) {
                      return SubmitButtonAction(
                        submit: _onSubmit,
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
      maxLength: 50,
      maxLines: 2,
      label: '⭐️ Recipe title: ',
      controller: _titleController,
    );
  }

  Widget _buildInputIngredients() {
    return InputTextView(
      maxLength: 300,
      maxLines: 10,
      label: '🧂 Ingredients: ',
      controller: _ingredientsController,
    );
  }

  Widget _buildInstructions() {
    return InputTextView(
      maxLength: 700,
      maxLines: 15,
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
          borderRadius: BorderRadius.circular(10),
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

  bool isSubmitActive() {
    if (newImagePath.isNotEmpty &&
        _titleController.text.isNotEmpty &&
        _ingredientsController.text.isNotEmpty &&
        _instructionsController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  Future<void> _onSubmit() async {
    if (isSubmitActive() == true) {
      late final newDish = Dish(
        title: _titleController.text,
        dishColor: DishesColors.generateRandomColor().value,
        ingredients: _ingredientsController.text,
        instructions: _instructionsController.text,
        image: newImagePath,
      );
      await DishesRepo.insert(newDish);
      if (!mounted) {
        return;
      }
      Navigator.pop(context, newDish);
      await showDialog(
        context: context,
        builder: (context) {
          return SubmitDialog(
            newDish: newDish,
          );
        },
      );
    } else {
      await showDialog(
        context: context,
        builder: (context) {
          return const RequaredFieldsDialog();
        },
      );
    }
  }
}
