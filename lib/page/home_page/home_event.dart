abstract class HomeEvent {}

class ChangeEvent extends HomeEvent {
  final int index;

  ChangeEvent(this.index);
}
