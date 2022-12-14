import 'package:FoodApp/page/home_page/home_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_view.dart';

class HomeProvider extends BlocProvider<HomeBloc> {
  HomeProvider({Key? key})
      : super(
          key: key,
          create: (context) => HomeBloc(context),
          child: const HomeView(),
        );
}
