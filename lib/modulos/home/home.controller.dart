import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.imports.dart';

class HomeController extends Cubit<HomeState> {
  HomeController() : super(HomeState.initialState());
  //

  late String teste;

  Future<void> init() async {
    HomeState.initialState();
  }

  Future increment() async {
    emit(HomeState.increment());
  }
}
