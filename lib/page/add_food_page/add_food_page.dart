import 'package:FoodApp/page/add_food_page/widgets/empty_card.dart';
import 'package:FoodApp/page/add_food_page/widgets/next_meal_component.dart';
import 'package:flutter/material.dart';
import '../../util/tab_util.dart';

class AddFoodPage extends StatefulWidget {
  const AddFoodPage({Key? key}) : super(key: key);

  @override
  _AddFoodPageState createState() => _AddFoodPageState();
}

class _AddFoodPageState extends State<AddFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: TabUtil.horizontalPadding,
          vertical: TabUtil.verticalPadding),
      child: Column(
        children: const [
          EmptyCard(),
          SizedBox(
            height: 20,
          ),
          NextMealComponent(),
        ],
      ),
    );
  }
}
