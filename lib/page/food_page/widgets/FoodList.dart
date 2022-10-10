import 'package:FoodApp/page/food_page/widgets/food_card.dart';
import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Container(
          height: 130,
          child: FoodCard(
            imgLink:
            'https://img.delicious.com.au/bQjDG77i/del/2021/07/spiced-peanut-butter-and-honey-pancakes-with-blackberry-cream-155151-2.jpg',
            type: 'Breakfast',
            price: '5000',
            days: 'Weekdays',
            size: 'Half',
            food: 'String Hoppers',
          ),
        ),
        Container(
          height: 130,
          child: FoodCard(
            imgLink:
            'https://img.delicious.com.au/bQjDG77i/del/2021/07/spiced-peanut-butter-and-honey-pancakes-with-blackberry-cream-155151-2.jpg',
            type: 'Lunch',
            price: '3000',
            days: 'Weekend',
            size: 'Half',
            food: 'String Hoppers',
          ),
        ),
        Container(
          height: 130,
          child: FoodCard(
            imgLink:
            'https://img.delicious.com.au/bQjDG77i/del/2021/07/spiced-peanut-butter-and-honey-pancakes-with-blackberry-cream-155151-2.jpg',
            type: 'Dinner',
            price: '700',
            days: 'Weekdays',
            size: 'Half',
            food: 'String Hoppers',
          ),
        ),
        Container(
          height: 130,
          child: FoodCard(
            imgLink:
            'https://img.delicious.com.au/bQjDG77i/del/2021/07/spiced-peanut-butter-and-honey-pancakes-with-blackberry-cream-155151-2.jpg',
            type: 'Lunch',
            price: '3000',
            days: 'Weekend',
            size: 'Half',
            food: 'String Hoppers',
          ),
        ),
        Container(
          height: 130,
          child: FoodCard(
            imgLink:
            'https://img.delicious.com.au/bQjDG77i/del/2021/07/spiced-peanut-butter-and-honey-pancakes-with-blackberry-cream-155151-2.jpg',
            type: 'Lunch',
            price: '3000',
            days: 'Weekend',
            size: 'Half',
            food: 'String Hoppers',
          ),
        ),
        Container(
          height: 130,
          child: FoodCard(
            imgLink:
            'https://img.delicious.com.au/bQjDG77i/del/2021/07/spiced-peanut-butter-and-honey-pancakes-with-blackberry-cream-155151-2.jpg',
            type: 'Lunch',
            price: '3000',
            days: 'Weekend',
            size: 'Half',
            food: 'String Hoppers',
          ),
        ),
      ],
    );
  }
}
