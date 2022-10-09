import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 8.0, horizontal: 4.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://img.delicious.com.au/bQjDG77i/del/2021/07/spiced-peanut-butter-and-honey-pancakes-with-blackberry-cream-155151-2.jpg",
                height: 100,
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Breakfast",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "String Hoppers",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.deepOrangeAccent),
                      ),
                      Text(
                        "Size: " + "Half",
                        style: TextStyle(
                            fontSize: 12.0, color: Colors.black),
                      ),
                      Text(
                        "Days: " + "Weekdays",
                        style: TextStyle(
                            fontSize: 12.0, color: Colors.black),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Text(
                              "Rs 5,000/Week",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black),
                            ),
                            width: MediaQuery.of(context).size.width *
                                0.5,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
