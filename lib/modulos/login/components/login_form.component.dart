import 'package:flutter/material.dart';

import 'components.imports.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    double w = MediaQuery.of(context).size.width / 100;

    return Padding(
      padding: EdgeInsets.only(left: w * 5, right: w * 5.8),
      child: Container(
        child: Column(
          children: [
            //----------------------- INPUT USUARIO -----------------------

            Padding(
              padding: EdgeInsets.only(top: 18),
              child: LoginInput(
                hintText: "Seu e-mail ou cpf",
                isObscure: false,
              ),
            ),

            //------------------------ INPUT SENHA ------------------------

            Padding(
              padding: EdgeInsets.only(top: 18),
              child: LoginInput(
                hintText: "senha",
                isObscure: true,
              ),
            ),

            //--------------------- ESQUECEU A SENHA ---------------------

            Padding(
              padding: EdgeInsets.only(top: 15),
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
              padding: EdgeInsets.only(top: 45),
              child: Container(
                width: w * 100,
                height: h * 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Color.fromRGBO(255, 179, 0, 1.0),
                  //229 177 77
                ),
                child: Center(
                  child: Text("Entrar"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
