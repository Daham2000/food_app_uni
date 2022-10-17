import 'package:FoodApp/page/food_page/widgets/food_card.dart';
import 'package:flutter/material.dart';

import '../../home_page/home_bloc.dart';

class FoodList extends StatelessWidget {
  final HomeBloc homeBloc;

  const FoodList({Key? key, required this.homeBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          FoodCard(
            imgLink:
                'https://img.delicious.com.au/bQjDG77i/del/2021/07/spiced-peanut-butter-and-honey-pancakes-with-blackberry-cream-155151-2.jpg',
            type: 'Breakfast',
            price: '5000',
            days: 'Weekdays',
            size: 'Half',
            food: 'String Hoppers',
            homeBloc: homeBloc,
          ),
          FoodCard(
            imgLink:
                'https://img.delicious.com.au/bQjDG77i/del/2021/07/spiced-peanut-butter-and-honey-pancakes-with-blackberry-cream-155151-2.jpg',
            type: 'Lunch',
            price: '3000',
            days: 'Weekend',
            size: 'Half',
            food: 'String Hoppers',
            homeBloc: homeBloc,
          ),
          FoodCard(
            imgLink:
                'https://img.delicious.com.au/bQjDG77i/del/2021/07/spiced-peanut-butter-and-honey-pancakes-with-blackberry-cream-155151-2.jpg',
            type: 'Dinner',
            price: '700',
            days: 'Weekdays',
            size: 'Half',
            homeBloc: homeBloc,
            food: 'String Hoppers',
          ),
        ],
      ),
    );
  }
}
