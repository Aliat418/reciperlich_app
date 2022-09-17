import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

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
  final repo = DishesRepo();
  late Future<List<Dish>> dishes;

  //late Box<Dish> dishesBox;
  Box<Dish> dishesBox = Hive.box<Dish>('boxDishes');

  // _addInfo() async {
  //   //  await box.put();
  //   //  await box.put();
  //   //print('Info added to box!');
  // }

  // _getInfo() {
  //   final name = box.get('name');
  //   final country = box.get('country');
  //   //print('Info retrieved from box: $name ($country)');
  // }

  // _updateInfo() {
  //   // box..put('name', 'Mike')
  //   // ..put('country', 'United States');
  //   //print('Info updated in box!');
  // }

  // _deleteInfo() {
  //   box
  //     ..delete('name')
  //     ..delete('country');
  //   //print('Info deleted from box!');
  // }

  void _refreshList() {
    setState(() {});
  }

  @override
  void initState() {
    dishesBox = Hive.box('dishes');
    // dishes = repo.getAll();
    super.initState();
  }

  @override
  void dispose() {
    // Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: dishes,
      builder: (BuildContext context, AsyncSnapshot<List<Dish>> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
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
                  text: 'Reciperlich',
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
