// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:reciperlich_app/dishes_repository.dart';
import 'package:reciperlich_app/utils/images.dart';
import 'package:reciperlich_app/widgets/appbar_widget.dart';
import 'package:reciperlich_app/widgets/dish_widget.dart';
import '../widgets/footer_widget.dart';

class MainFoodPage extends StatelessWidget {
  MainFoodPage({Key? key}) : super(key: key);
  final dish = DishReposiyory.getDish();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          AppbarWidget(
            image: AppImages.appBarImage,
            text: 'Reciperlich',
          ),
          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverFixedExtentList(
              itemExtent: 115,
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Dish(dish[index])),
                childCount: dish.length,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: FooterWidget(),
          )
        ],
      ),
    );
  }
}
