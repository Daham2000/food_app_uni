import 'package:FoodApp/page/food_page/widgets/FoodList.dart';
import 'package:FoodApp/page/home_page/home_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../util/tab_util.dart';
import '../home_page/home_bloc.dart';
import '../home_page/home_state.dart';
import 'widgets/search_food_card.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  Map<String, bool> weekDaysList = {
    "mon": false,
    "tue": false,
    "wed": false,
    "thu": false,
    "fri": false,
    "sat": false,
    "sun": false,
  };

  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = BlocProvider.of<HomeBloc>(context);

    return BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (pre, current) =>
            pre.error != current.error ||
            pre.isSearchFood != current.isSearchFood ||
            pre.isEditMealsPage != current.isEditMealsPage,
        builder: (ctx, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: TabUtil.horizontalPadding,
            ),
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
                        state.isEditMealsPage! == false
                            ? "Plan you meals here"
                            : state.isSearchFood!
                                ? ""
                                : "Breakfast",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                          fontSize:
                              state.isEditMealsPage! == false ? 14.0 : 22.0,
                          fontWeight: state.isEditMealsPage!
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: state.isEditMealsPage! == false
                              ? Colors.grey
                              : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                state.isEditMealsPage! == false
                    ? FoodList(
                        homeBloc: homeBloc,
                      )
                    : state.isSearchFood!
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 3.0,
                            ),
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [
                                    TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          filled: true,
                                          hintStyle: TextStyle(
                                              color: Colors.grey[800]),
                                          hintText: "Type in your text",
                                          fillColor: Colors.white70),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    SearchFoodCard(
                                      img:
                                          "https://img.delicious.com.au/bQjDG77i/del/2021/07/spiced-peanut-butter-and-honey-pancakes-with-blackberry-cream-155151-2.jpg",
                                      description:
                                          "There are some foods you can try and smell here are some foods you can try and smell",
                                      price: "Rs 400.00",
                                      title: "Rice and Curry",
                                    ),
                                    SearchFoodCard(
                                      img:
                                      "https://img.delicious.com.au/bQjDG77i/del/2021/07/spiced-peanut-butter-and-honey-pancakes-with-blackberry-cream-155151-2.jpg",
                                      description:
                                      "There are some foods you can try and smell, here are some foods you can try and smell",
                                      price: "Rs 400.00",
                                      title: "Rice and Curry",
                                    ),
                                    SearchFoodCard(
                                      img:
                                      "https://img.delicious.com.au/bQjDG77i/del/2021/07/spiced-peanut-butter-and-honey-pancakes-with-blackberry-cream-155151-2.jpg",
                                      description:
                                      "There are some foods you can try and smell here are some foods you can try and smell",
                                      price: "Rs 400.00",
                                      title: "Rice and Curry",
                                    ),
                                  ],
                                )),
                          )
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 3.0,
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Meal",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: InkWell(
                                          onTap: () {
                                            homeBloc
                                                .add(SetSearchPageEvent(true));
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 12),
                                            child: Text("String Hoppers"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Size",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: DropdownButton<String>(
                                          items: <String>[
                                            'Small',
                                            'Normal',
                                            'Half',
                                            'Full'
                                          ].map((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          value: "Normal",
                                          style: TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.black),
                                          onChanged: (_) {},
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Days",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Checkbox(
                                                  value:
                                                      this.weekDaysList['mon'],
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      this.weekDaysList['mon'] =
                                                          value ?? false;
                                                    });
                                                  },
                                                ),
                                                Text("Mon")
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Checkbox(
                                                  value:
                                                      this.weekDaysList['tue'],
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      this.weekDaysList['tue'] =
                                                          value ?? false;
                                                    });
                                                  },
                                                ),
                                                Text("Tue")
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Checkbox(
                                                  value:
                                                      this.weekDaysList['wed'],
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      this.weekDaysList['wed'] =
                                                          value ?? false;
                                                    });
                                                  },
                                                ),
                                                Text("Wed")
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Checkbox(
                                                  value:
                                                      this.weekDaysList['thu'],
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      this.weekDaysList['thu'] =
                                                          value ?? false;
                                                    });
                                                  },
                                                ),
                                                Text("Thu")
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Checkbox(
                                                  value:
                                                      this.weekDaysList['fri'],
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      this.weekDaysList['fri'] =
                                                          value ?? false;
                                                    });
                                                  },
                                                ),
                                                Text("Fri")
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Checkbox(
                                                  value:
                                                      this.weekDaysList['sat'],
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      this.weekDaysList['sat'] =
                                                          value ?? false;
                                                    });
                                                  },
                                                ),
                                                Text("Sat")
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Checkbox(
                                                  value:
                                                      this.weekDaysList['sun'],
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      this.weekDaysList['sun'] =
                                                          value ?? false;
                                                    });
                                                  },
                                                ),
                                                Text("Sun")
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 13.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Place",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: DropdownButton<String>(
                                          items: <String>[
                                            'Home',
                                            'Office',
                                          ].map((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          value: "Home",
                                          style: TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.black),
                                          onChanged: (_) {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
              ],
            ),
          );
        });
  }
}
