import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(BuildContext context) : super(HomeState.initialState);

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    switch (event.runtimeType) {
      case ChangeEvent:
        final data = event as ChangeEvent;
        yield state.clone(
          selectedIndex: data.index,
          isEditMealsPage: false,
          isSearchFood: false,
        );
        break;

      case SetEditMealsPage:
        final data = event as SetEditMealsPage;
        yield state.clone(isEditMealsPage: data.setPage);
        break;

      case SetSearchPageEvent:
        final data = event as SetSearchPageEvent;
        yield state.clone(isSearchFood: data.setPage);
        break;
    }
  }
}
