import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.imports.dart';

// part 'home.state.dart';

class HomeCubit extends Cubit<int> {
  HomeCubit() : super(0);
  //

  // Future<void> init() async {
  //   // initialState();
  //   HomeState.initialState();
  // }

  Future increment() async {
    emit(state + 1);
  }
}
