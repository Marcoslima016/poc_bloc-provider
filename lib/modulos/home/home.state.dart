part of 'home.controller.dart';

// import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  //

  int count;

  HomeState({this.count = 0});

  HomeState.initialState() : count = 0;

  Future init() async {
    count = 0;
  }

  HomeState.increment() {
    count = count + 1;
  }

  @override
  // TODO: implement props
  List<Object> get props => [count];
}
