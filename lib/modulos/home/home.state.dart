class HomeState {
  //

  int count;

  HomeState({this.count = 0});

  HomeState.initialState() {
    count = 0;
  }

  HomeState.increment() {
    count = count + 1;
  }
}
