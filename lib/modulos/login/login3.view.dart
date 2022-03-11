import 'package:flutter/material.dart';

import 'login.imports.dart';

class LoginView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    double w = MediaQuery.of(context).size.width / 100;
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
                body: Container(
                  width: w * 100,
                  height: h * 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ///---------------- LOGO ----------------
                      ///
                      // Container(
                      //   width: w * 35,
                      //   child: Image.asset("assets/logo1.png"),
                      // ),

                      Image.asset("assets/logo1.png"),

                      ///------------- FORMULARIO -------------
                      ///
                      LoginForm(),

                      ///---------- BOTAO CADASTRAR -----------

                      // SizedBox(height: 30),
                      // Text("CADASTRAR!"),
                    ],
                  ),
                ),
              ),

              //------------------------------------- ITENS INFERIORES -------------------------------------

              ///---------- SOLICITAR AJUDA -----------
              ///
              Positioned(
                bottom: 0,
                child: Container(height: h * 11, width: w * 100, color: Colors.red),
              ),

              // Text("!!!!!!!!!"),
            ],
          ),
        ),
      ),
    );
  }
}
