import 'package:flutter/material.dart';
import 'package:reciperlich_app/widgets/appbar_widget.dart';
import 'package:reciperlich_app/widgets/dish_widget.dart';
import 'package:reciperlich_app/widgets/top_image_widget.dart';

import '../widgets/footer_widget.dart';
import '../widgets/appbar_delegate.dart';

class MainFoodPage extends StatelessWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          AppbarWidget(
            image: Image.asset('sweetsFont.jpg'),
            text: 'Reciperlich',
          ),
          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverFixedExtentList(
              itemExtent: 115,
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Dish(),
                ),
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
