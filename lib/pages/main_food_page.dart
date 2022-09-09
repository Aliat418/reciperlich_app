import 'package:flutter/material.dart';

import '../data/dishes_repository.dart';
import '../resources/images.dart';
import '../theme/colors.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/dish_view_widget.dart';
import '../widgets/footer_widget.dart';

class MainFoodPage extends StatelessWidget {
  final dish = DishRepository.getDishes();
  static const routeName = '/main_food_page';

  MainFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.pastelPink,
        elevation: 3,
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/add_recipe_page',
          );
        },
        child: const Icon(Icons.add),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          const AppbarWidget(
            image: AppImages.appBarImage,
            text: 'Reciperlich',
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverFixedExtentList(
              itemExtent: 115,
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: DishView(dish[index]),
                ),
                childCount: dish.length,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: FooterWidget(),
          ),
        ],
      ),
    );
  }
}
