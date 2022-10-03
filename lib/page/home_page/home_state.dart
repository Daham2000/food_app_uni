class HomeState {
  String? error;
  int? selectedIndex;

  HomeState({
    this.error,
    this.selectedIndex,
  });

  HomeState.init()
      : this(
          error: "",
    selectedIndex: 0,
        );

  HomeState clone({
    String? error,
    int? selectedIndex,
  }) {
    return HomeState(
      error: error ?? this.error,
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }

  static HomeState get initialState => HomeState(
        error: "",
    selectedIndex: 0,
      );
}
