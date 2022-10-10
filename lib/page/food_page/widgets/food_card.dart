import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String imgLink;
  final String type;
  final String food;
  final String size;
  final String days;
  final String price;

  const FoodCard(
      {Key? key,
      required this.imgLink,
      required this.type,
      required this.food,
      required this.size,
      required this.days,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                imgLink,
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
                        type,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        food,
                        style: TextStyle(
                            fontSize: 12.0, color: Colors.deepOrangeAccent),
                      ),
                      Text(
                        "Size: " + size,
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      ),
                      Text(
                        "Days: " + days,
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            child: Text(
                              "Rs ${price}/Week",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black),
                            ),
                            width: MediaQuery.of(context).size.width * 0.5,
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
