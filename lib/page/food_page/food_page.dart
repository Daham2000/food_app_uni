import 'package:FoodApp/page/food_page/widgets/food_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util/tab_util.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: TabUtil.horizontalPadding,
          vertical: TabUtil.verticalPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 3.0,
                ),
                child: Text(
                  "Plan you meals here",
                  style: GoogleFonts.roboto(fontSize: 14.0, color: Colors.grey),
                ),
              ),
            ],
          ),
          Column(
            children: const [
              FoodCard(),
            ],
          )
        ],
      ),
    );
  }
}
