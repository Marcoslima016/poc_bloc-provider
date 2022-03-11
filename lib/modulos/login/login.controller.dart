import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../lib.imports.dart';
import 'login.imports.dart';

class LoginController extends Cubit<LoginState> {
  //

  LoginRepository repository = LoginRepository();

  TextEditingController inputUser = TextEditingController();
  TextEditingController inputPass = TextEditingController();

  LoginController() : super(LoginState()) {
    //
  }

  Future sigin(BuildContext context) async {
    try {
      AppController appController = Get.find<AppController>();
      User userData = await repository.authenticateUser(
        LoginCredentials(
          user: inputUser.text,
          pass: inputPass.text,
        ),
      );
      appController.loggedUser = userData;
      appController.autheticated = true;

      Navigator.pushNamed(context, "/home");
    } catch (e) {
      //
    }
  }
}
