import 'package:FoodApp/page/home_page/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'page/home_page/home_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
        title: 'FoodApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeProvider());

    return MultiBlocProvider(
      providers: <BlocProvider>[
        BlocProvider<HomeBloc>(create: (context) => HomeBloc(context)),
      ],
      child: app,
    );
  }
}
