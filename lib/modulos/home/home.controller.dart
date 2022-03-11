import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../lib.imports.dart';
import 'home.imports.dart';

class HomeController extends Cubit<User?> {
  HomeController() : super(User(nome: "", jwt: ""));
  //

  Future getUserData() async {
    AppController appController = Get.find<AppController>();
    User? userData = appController.loggedUser;
    emit(userData);
  }
}


// class HomeController extends Cubit<User> {
//   HomeController()
//       : super(
//           User(nome: "", jwt: ""),
//         );
//   //

//   Future getUserData() async {
//     AppController appController = Get.find<AppController>();
//     User userData = appController.loggedUser;
//     emit(userData);
//   }
// }
