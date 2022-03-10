import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.imports.dart';

part 'home.state.dart';

class HomeController extends Cubit<HomeState> {
  HomeController() : super(HomeState.initialState());
  //

  Future<void> init() async {
    // initialState();
    HomeState.initialState();
  }

  Future increment() async {
    emit(HomeState.increment());
  }
}
