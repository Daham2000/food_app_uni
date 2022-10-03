import 'package:FoodApp/util/tab_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/bottom_navi_bar.dart';
import 'home_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = BlocProvider.of<HomeBloc>(context);

    return BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (pre, current) =>
            pre.error != current.error ||
            pre.selectedIndex != current.selectedIndex,
        builder: (ctx, state) {
          return Scaffold(
            body: Center(
              child: TabUtil.tabPageOptions.elementAt(state.selectedIndex ?? 0),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: BottomNaviBarItem.getBottomNaviItems(),
              currentIndex: state.selectedIndex ?? 0,
              selectedItemColor: Colors.black,
              onTap: (index) => {homeBloc.add(ChangeEvent(index))},
            ),
          );
        });
  }
}
