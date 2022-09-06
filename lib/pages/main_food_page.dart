import 'package:flutter/material.dart';
import '../data/dishes_repository.dart';
import '../resources/images.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/dish_view_widget.dart';
import '../widgets/footer_widget.dart';

class MainFoodPage extends StatelessWidget {
  final dish = DishRepository.getDishes();

  MainFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
