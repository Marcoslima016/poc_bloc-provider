import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../lib.imports.dart';
import '../login.imports.dart';
import 'components.imports.dart';

class LoginForm extends StatelessWidget {
  LoginController controller;
  LoginForm({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    double w = MediaQuery.of(context).size.width / 100;

    return Padding(
      padding: EdgeInsets.only(left: w * 5, right: w * 5.8),
      child: Form(
        child: Column(
          children: [
            //----------------------- INPUT USUARIO -----------------------

            Padding(
              padding: EdgeInsets.only(top: 0),
              child: LoginInput(
                hintText: "Seu e-mail ou cpf",
                isObscure: false,
                keyboardPadding: h * 34,
                textController: controller.inputUser,
              ),
            ),

            //------------------------ INPUT SENHA ------------------------

            Padding(
              padding: EdgeInsets.only(top: 18),
              child: LoginInput(
                hintText: "senha",
                isObscure: true,
                keyboardPadding: h * 28,
                textController: controller.inputPass,
              ),
            ),

            // TextFormField(
            //   scrollPadding: const EdgeInsets.only(bottom: 200),
            // ),

            //--------------------- ESQUECEU A SENHA ---------------------

            Padding(
              padding: EdgeInsets.only(top: 18),
              child: Container(
                width: w * 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Esqueceu a senha?"),
                  ],
                ),
              ),
            ),

            //----------------------- BOTÃO ACESSAR -----------------------

            Padding(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 0,
              ),
              child: GestureDetector(
                onTap: () {
                  var t1 = controller.inputUser.text;
                  Get.find<AppController>();
                  controller.sigin(context);
                },
                child: Container(
                  width: w * 100,
                  height: h * 8.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Get.find<AppController>().style.primaryColor,
                    //229 177 77
                  ),
                  child: Center(
                    child: Text("Entrar"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
