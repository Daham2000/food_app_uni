import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextMealComponent extends StatelessWidget {
  const NextMealComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: MediaQuery.of(context).size.width,
      color: Color(0xFFF1F1F1),
      child: Column(
        children: [
          const SizedBox(
            height: 4.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Next Meal"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Rice and curry",
                  style: GoogleFonts.roboto(
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.emoji_food_beverage_sharp,
                size: 100.0,
              ),
              Text("Preparing!")
            ],
          )
        ],
      ),
    );
  }
}
