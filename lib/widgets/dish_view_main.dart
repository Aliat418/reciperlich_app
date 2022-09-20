import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../model/dish.dart';
import '../theme/colors.dart';
import 'delete_buttoton_action.dart';

class DishView extends StatefulWidget {
  final Dish dish;
  final int index;

  const DishView({
    required this.index,
    required this.dish,
    super.key,
  });

  @override
  State<DishView> createState() => _DishViewState();
}

class _DishViewState extends State<DishView> {
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
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Color(widget.dish.dishColor),
              borderRadius: const BorderRadius.all(
                Radius.elliptical(15, 15),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: _mainTitleText(),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.elliptical(10, 10),
                    ),
                    child: _buildImage(),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DeleteButtonAction(
                      dish: widget.dish,
                      index: widget.index,
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

  Widget _mainTitleText() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        top: 5,
        bottom: 5,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            widget.dish.title,
            minFontSize: 15,
            maxFontSize: 20,
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    final localDishImage = widget.dish.image;
    if (localDishImage != null) {
      return Image.file(File(localDishImage));
    }
    return const SizedBox.shrink();
  }
}
