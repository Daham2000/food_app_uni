import 'package:FoodApp/util/color_util.dart';
import 'package:flutter/material.dart';
import '../util/tab_util.dart';

class BottomNaviBarItem {
  static getBottomNaviItems() {
    return [
      BottomNavigationBarItem(
          icon: Icon(
            TabUtil.homeTab,
            color: Colors.black,
          ),
          activeIcon: Icon(
            TabUtil.homeTab,
            color: ColorUtil.darkOrangeColor,
          ),),
      BottomNavigationBarItem(
          icon: Icon(
            TabUtil.subscriptionTab,
            color: Colors.black,
          ),
          activeIcon: Icon(
            TabUtil.subscriptionTab,
            color: ColorUtil.darkOrangeColor,
          ),),
      BottomNavigationBarItem(
          icon: Icon(
            TabUtil.paymentTab,
            color: Colors.black,
          ),
          activeIcon: Icon(
            TabUtil.paymentTab,
            color: ColorUtil.darkOrangeColor,
          ),),
      BottomNavigationBarItem(
          icon: Icon(
            TabUtil.profileTab,
            color: Colors.black,
          ),
          activeIcon: Icon(
            TabUtil.profileTab,
            color: ColorUtil.darkOrangeColor,
          ),),
    ];
  }
}
