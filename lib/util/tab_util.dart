import 'package:FoodApp/page/payment_page/payment_view.dart';
import 'package:flutter/material.dart';

import '../page/add_food_page/add_food_page.dart';
import '../page/food_page/food_page.dart';
import '../page/profile_page/profile_page.dart';

class TabUtil {
  static IconData homeTab = Icons.home;
  static IconData subscriptionTab = Icons.fastfood;
  static IconData paymentTab = Icons.payments_rounded;
  static IconData profileTab = Icons.person;
  static const List<Widget> tabPageOptions = <Widget>[
    AddFoodPage(),
    FoodPage(),
    PaymentView(),
    ProfilePage(),
  ];
  static const List<String> appBarTitles = <String>[
    "Dashboard",
    "Meals",
    "Payment",
    "",
  ];
  static const horizontalPadding = 13.0;
  static const verticalPadding = 12.0;
}
