import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../lib.imports.dart';
import 'home.imports.dart';

// part 'home.state.dart';

class HomeCubit extends Cubit<User> {
  HomeCubit() : super(User(nome: ""));
  //

  // Future<void> init() async {
  //   // initialState();
  //   HomeState.initialState();
  // }

  Future increment() async {
    User userData = Get.find<AppController>().loggedUser;
    emit(userData);
  }
}
