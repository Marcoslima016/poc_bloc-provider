import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.imports.dart';

class HomeController extends Cubit<HomeState> {
  HomeController() : super(HomeState.initialState());
  //

  String teste;

  Future<void> init() async {
    //
  }

  Future increment() async {
    emit(HomeState.increment());
  }
}
