import 'package:reciperlich_app/model.dart';
import 'package:reciperlich_app/utils/colors.dart';
import 'package:reciperlich_app/utils/images.dart';

class DishReposiyory {
  static List<DishModel> getDish() => [
        DishModel('Pizza margarita', 'Dominos Pizza', AppImages.pizza,
            AppColors.pastelGreen),
        DishModel('Sushi set', 'Origami delivery', AppImages.sushi,
            AppColors.pastelBlue),
        DishModel('Classic Noodles', 'Musashi & Co', AppImages.noodles,
            AppColors.pastelOrange),
        DishModel('Granny\'s special PanCakes', 'PanCake market',
            AppImages.pancake, AppColors.pastelGreen),
        DishModel('Spaghetti', 'Semifredo restaurant', AppImages.spaghetti,
            AppColors.pastelBlue),
        DishModel('Taco', 'Brazil restaurant', AppImages.taco,
            AppColors.pastelOrange),
      ];
}


//String get dishColor => null;