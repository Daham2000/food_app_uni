abstract class HomeEvent {}

class ChangeEvent extends HomeEvent {
  final int index;

  ChangeEvent(this.index);
}

class SetEditMealsPage extends HomeEvent {
  final bool setPage;

  SetEditMealsPage(this.setPage);
}

class SetSearchPageEvent extends HomeEvent {
  final bool setPage;

  SetSearchPageEvent(this.setPage);
}
