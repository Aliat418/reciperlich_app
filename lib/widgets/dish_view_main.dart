import 'package:flutter/material.dart';

import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../theme/colors.dart';
import '../theme/fonts.dart';
import 'delete_buttoton_action.dart';

class DishView extends StatefulWidget {
  final Dish dish;

  const DishView({
    required this.dish,
    super.key,
  });

  @override
  State<DishView> createState() => _DishViewState();
}

class _DishViewState extends State<DishView> {
  final List<Dish> dishes = DishesRepo.getAll();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        '/recipe_page',
        arguments: widget.dish,
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 10),
            decoration: BoxDecoration(
              color: widget.dish.dishColor,
              borderRadius: const BorderRadius.all(
                Radius.elliptical(15, 15),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _mainTitleText(),
                      const SizedBox(height: 5),
                      _mainPurchasePlace(),
                    ],
                  ),
                ),
                _buildImage(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: DeleteButtonAction(
                        dish: widget.dish,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _mainPurchasePlace() {
    return CustomText(
      text: widget.dish.purchasePlace,
      color: AppColors.darkPurple,
      fontSize: 15,
      fontWeight: FontWeight.normal,
    );
  }

  Widget _mainTitleText() {
    return CustomText(
      text: widget.dish.title,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColors.darkPurple,
    );
  }

  Widget _buildImage() {
    final localDishImage = widget.dish.image;
    if (localDishImage != null) {
      return Image.asset(localDishImage);
    }
    return const SizedBox.shrink();
  }
}
