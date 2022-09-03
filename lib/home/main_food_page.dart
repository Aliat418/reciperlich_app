import 'package:flutter/material.dart';
import 'package:reciperlich_app/data/dishes_repository.dart';
import 'package:reciperlich_app/resources/images.dart';
import 'package:reciperlich_app/widgets/appbar_widget.dart';
import 'package:reciperlich_app/widgets/dish_view_widget.dart';
import '../widgets/footer_widget.dart';

class MainFoodPage extends StatelessWidget {
  MainFoodPage({Key? key}) : super(key: key);
  final dish = DishRepository.getDish();

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
