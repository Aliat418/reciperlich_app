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
  void _refreshList() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DishesRepo.getAll(),
      builder: (BuildContext context, AsyncSnapshot<List<Dish>> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.startDocked,
            floatingActionButton: FloatingActionButton(
              backgroundColor: AppColors.pastelPink,
              mini: true,
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
                  text: 'CookBook',
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(20),
                  sliver: SliverFixedExtentList(
                    itemExtent: 115,
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: DishView(
                          dish: snapshot.data![index],
                          index: index,
                        ),
                      ),
                      childCount: snapshot.data!.length,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: FooterView(),
                ),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.pastelPink,
            ),
          );
        }
      },
    );
  }
}
