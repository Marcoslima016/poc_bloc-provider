import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../lib.imports.dart';
import 'login.imports.dart';

class LoginController {
  //

  LoginRepository repository = LoginRepository();

  final formKey = GlobalKey<FormState>();

  TextEditingController inputUser = TextEditingController();
  TextEditingController inputPass = TextEditingController();

  Future sigin(BuildContext context) async {
    try {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
      } else {
        return;
      }

      AppController appController = Get.find<AppController>();
      User? userData = await repository.authenticateUser(
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
