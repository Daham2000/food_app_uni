class HomeState {
  String? error;
  int? selectedIndex;
  bool? isEditMealsPage;
  bool? isSearchFood;

  HomeState({
    this.error,
    this.selectedIndex,
    this.isEditMealsPage,
    this.isSearchFood,
  });

  HomeState.init()
      : this(
          error: "",
          selectedIndex: 0,
          isEditMealsPage: false,
          isSearchFood: false,
        );

  HomeState clone({
    String? error,
    int? selectedIndex,
    bool? isEditMealsPage,
    bool? isSearchFood,
  }) {
    return HomeState(
      error: error ?? this.error,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      isEditMealsPage: isEditMealsPage ?? this.isEditMealsPage,
      isSearchFood: isSearchFood ?? this.isSearchFood,
    );
  }

  static HomeState get initialState => HomeState(
        error: "",
        selectedIndex: 0,
        isEditMealsPage: false,
        isSearchFood: false,
      );
}
