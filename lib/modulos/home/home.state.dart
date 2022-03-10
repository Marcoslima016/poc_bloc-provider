class HomeState {
  //

  late int count;

  HomeState();

  HomeState.initialState() {
    count = 0;
  }

  HomeState.increment() {
    count++;
  }
}
