import 'package:reciperlich_app/model/dish.dart';
import 'package:reciperlich_app/theme/colors.dart';
import 'package:reciperlich_app/resources/images.dart';

class DishRepository {
  static List<Dish> getDish() => [
        Dish(
            'Pizza margherita',
            'Dominos Pizza',
            AppImages.pizza,
            AppColors.pastelGreen,
            '1 large pizza base, 2 gm basil, 2 ml olive oil pomace, 50 ml pizza sauce, 60 gm sliced tomato, 1 gm salt, 1 tablespoon tomato ketchup.',
            'Pre-heat oven at 250 degree Celsius. Spread tomato ketchup, fresh basil along with grated mozzarella cheese at the top of pizza base, and garnish with sliced tomatoes. Spread tomato ketchup, fresh basil along with grated mozzarella cheese at the top of pizza base, and top it with sliced tomatoes. Bake in a pre-heated oven at 10 to 12 minutes and glaze with olive oil and basil. Serve hot when it’s done. Sprinkle some oregano and chilli flakes, and relish the taste of this yummy pizza!',
            AppImages.pizzaDish),
        Dish(
            'Sushi set',
            'Origami delivery',
            AppImages.sushi,
            AppColors.pastelBlue,
            '2 cup jasmine rice, 2 tablespoon rice vinegar, 2 tablespoon sugar, 120 gm chopped salmon fish, 120 gm chopped eel fish, 120 gm shrimps, 10 gm wasabi, 1 nori sheet.',
            'coat seafood evenly with wasabi. Rinse the rice with cold water and thoroughly clean, until you see clean water. Add the rice and water into a medium saucepan and place over high flame. Let it boil and make sure that you don\'t cover the pan with a lid. Once it begins to boil, reduce the heat to the low and cover. Cook for 15 minutes. Remove from the heat and let it stand covered, for 10 minutes. This will help the rice to cook in its own steam. Meanwhile, add the rice vinegar, sugar and salt in a small bowl and place it in the microwave on high temperature for 30 to 45 seconds. Transfer the rice into a large mixing bowl and add the prepare vinegar mixture to it. Mix it well to coat the entire rice with this mixture. Once done, Form the rice into a base and cover with fish and shrimps, fix it with a small strips of nori. Serve and enjoy!',
            AppImages.sushiDish),
        Dish(
            'Classic Noodles',
            'Musashi & Co',
            AppImages.noodles,
            AppColors.pastelOrange,
            '300 gm chinese noodles, 4 sliced onion, 3 red chillies, 200 gm shredded cabbage, 100 gm shiitake, 150 gm chopped bean, 4 teaspoon sunflower oil, 2 pinch powdered salt, 4 shredded carrot, 20 cloves chopped garlic, 4 tablespoon light soya sauce, 2 pinch powdered black pepper, 2 teaspoon ajinomoto.',
            'here\'s a simple way of making this dish at home by using some easily available ingredients Take a big microwave-safe bowl and add water in it. Then add oil and salt. Boil for 10 minutes. Then add noodles and boil for 8-9 minutes. Keep stirring in between. Once done, strain and wash the boiled noodles under cold running water. Once done, keep aside.Then take another microwave-safe bowl and add oil in it. Microwave at 100% power for 30 secs. Once the oil is sufficiently hot, add all chopped vegetables and microwave for 4 – 5 minutes at 100% power. Stir in between. Add soya sauce, tomato chilli sauce, vinegar, salt, black pepper and Ajinomoto. Stir the ingredients well.Now add the boiled noodles to vegetables and stir it. Microwave for 1 min. at 80% power. Chinese Noodles is ready to be served. Pair it with vegetable or chicken Manchurian and serve hot.',
            AppImages.noodlesDish),
        Dish(
            'Granny\'s special PanCakes',
            'PanCake market',
            AppImages.pancake,
            AppColors.pastelGreen,
            'cup wholemeal flour, 2 tablespoon caster sugar, 2 egg, 2 tablespoon butter, 5 drops vanilla essence, 2 teaspoon baking powder, 4 tablespoon honey, 1 cup yoghurt.',
            'add whole-meal flour, baking powder and mix them. Stir in yogurt and mix well.Combine vanilla essence, eggs, honey into the mixture and whisk to form a smooth batter. Over medium flame, place a pan and melt butter in it.Once the butter melts, cook for 2-3 minutes from both the sides until golden brown in color. Likewise, make all the other pancakes. Place them in serving plates and top with sugary berries if you want.',
            AppImages.pancakeDish),
        Dish(
            'Spaghetti',
            'Semifredo restaurant',
            AppImages.spaghetti,
            AppColors.pastelBlue,
            '400 gm pasta spaghetti, 4 cup water, 2 tablespoon extra virgin olive oil, 4 tablespoon parmesan cheese, 1 1/2 teaspoon salt, 4 tablespoon parsley, 1 teaspoon sesame.',
            'wash parsley in running water and finely chop it too in another bowl. Now, take a small bowl and grate Parmesan cheese in it. Keep these aside till required. Now, to boil the spaghetti pasta, put a skillet on medium flame and add water in it along with half teaspoon salt and one tablespoon extra virgin olive oil in it. Stir once and bring it to a boil, and add spaghetti pasta in the skillet. Let the spaghetti boil for 10 minutes and cook till al dante. Drain completely in a bowl and set it aside. Then ad to  boiled spaghetti chopped parsley and sprinkle the grated cheese (leave a little for the garnishing) on the pasta. Toss once again to mix all the ingredients well and the cheesy pasta is ready to be served. Garnish with tomatos,remaining cheese and sesame, Serve immediately.',
            AppImages.spaghettiDish),
        Dish(
            'Taco',
            'Brazil restaurant',
            AppImages.taco,
            AppColors.pastelOrange,
            '6 taco shells, salt as required, 100 gm baby lettuce, 1/4 cup refined oil, 200 gm, refried beans, 100 gm tomato, 100 gm cubed avocados, 10 gm mint leaves, 100 gm grated cheddar cheese, 50 gm sour cream.',
            'start by deseeding and cutting tomatoes and avocados in small cubes. Take a medium pan, add oil and heat it over medium flame. Add avocado cubes, tomatoes and saute them over medium flame. 		Take a small pan and heat it over medium flame. Add beans and heat them for a minute or two. Then, transfer the beans in a bowl and mash them with a spoon. Now line the taco shells with lettuce on a flat surface. Add a spoonful of mashed beans inside tacos. Top it up with avocado and tomato filling. Garnish with grated cheese and a dollop of sour cream and mint leaves. Serve.',
            AppImages.tacoDish),
      ];
}
