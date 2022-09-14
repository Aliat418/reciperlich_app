import 'package:flutter/material.dart';

import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../theme/colors.dart';
import '../theme/fonts.dart';

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
  late final List<Dish> dishes = DishesRepo.getAll();

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
            padding: const EdgeInsets.only(left: 20, right: 5),
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
                      CustomText(
                        text: widget.dish.title,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkPurple,
                      ),
                      const SizedBox(height: 5),
                      CustomText(
                        text: widget.dish.purchasePlace,
                        color: AppColors.darkPurple,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                ),
                _buildImage(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PopupMenuButton<int>(
                      // position: PopupMenuPosition.under,
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.more_vert,
                              ),
                              // SizedBox(
                              //   height: 10,
                              //   width: 10,
                              // ),
                              Text('Delete recipe')
                            ],
                          ),
                        ),
                      ],
                      offset: const Offset(100, 100),
                      color: Colors.white,
                      elevation: 2,
                      onSelected: (value) {
                        _showDialog(context);
                      },
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

  Widget _buildImage() {
    final localDishImage = widget.dish.image;
    if (localDishImage != null) {
      return Image.asset(localDishImage);
    }
    return const SizedBox.shrink();
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert!!'),
          content: const Text('You are awesome!'),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Column(
                children: const [
                  Text('Yes'),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Column(
                children: const [
                  Text('No'),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
