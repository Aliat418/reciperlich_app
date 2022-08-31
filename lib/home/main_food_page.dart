import 'package:flutter/material.dart';
import 'package:reciperlich_app/widgets/appbar_widget.dart';
import 'package:reciperlich_app/widgets/top_image_widget.dart';

import '../widgets/footer_widget.dart';

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
          const SliverToBoxAdapter(
            child: FooterWidget(),
          )
        ],
      ),
    );
  }
}
