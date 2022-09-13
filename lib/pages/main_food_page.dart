import 'package:flutter/material.dart';

import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../resources/images.dart';
import '../theme/colors.dart';
import '../widgets/appbar_view_main.dart';
import '../widgets/dish_view_main.dart';
import '../widgets/footer_view.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
  static const routeName = '/main_food_page';
}

class _MainFoodPageState extends State<MainFoodPage> {
  late final List<Dish> dishes = DishesRepo.getAll();

  void _refreshList() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.pastelPink,
        elevation: 3,
        onPressed: () async {
          final result = await Navigator.pushNamed(
            context,
            '/add_recipe_page',
          );
          if (result != null) {
            _refreshList();
          }
        },
        child: const Icon(Icons.add),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          const AppbarView(
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
                  child: DishView(dish: dishes[index]),
                ),
                childCount: dishes.length,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: FooterView(),
          ),
        ],
      ),
    );
  }
}
