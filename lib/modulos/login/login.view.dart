import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login.imports.dart';

class LoginView extends StatelessWidget {
  LoginController controller = LoginController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    double w = MediaQuery.of(context).size.width / 100;
    final bottom = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: w * 100,
          height: h * 100,
          child: Stack(
            children: [
              //------------------------------------- ITENS CENTRAIS -------------------------------------

              Scaffold(
                backgroundColor: Colors.white,
                body: SingleChildScrollView(
                  child: Container(
                    width: w * 100,
                    height: h * 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ///---------------- LOGO ----------------
                        ///
                        Container(
                          width: w * 34,
                          child: Image.asset("assets/logo1.png"),
                        ),

                        SizedBox(height: h * 1.2),

                        Text(
                          "Cerveja na mão num passe de mágica",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),

                        ///------------- FORMULARIO -------------

                        Padding(
                          padding: EdgeInsets.only(top: h * 2.6, bottom: h * 2.6),
                          child: Text(
                            'Entre com seu login',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: h * 2.8, fontWeight: FontWeight.w700),
                          ),
                        ),

                        LoginForm(
                          controller: controller,
                        ),

                        ///---------- BOTAO CADASTRAR -----------

                        Padding(
                          padding: EdgeInsets.only(top: h * 3.7, bottom: h * 5),
                          child: Container(
                            width: w * 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Não tem conta? "),
                                Text(
                                  "Criar novo cadastro",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //------------------------------------- ITENS INFERIORES -------------------------------------

              ///---------- SOLICITAR AJUDA -----------
              ///
              Positioned(
                bottom: 0,
                child: Container(
                  height: h * 11,
                  width: w * 100,
                  color: Colors.transparent,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Problema com o acesso? "),
                        Text(
                          "Solicite ajuda",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
