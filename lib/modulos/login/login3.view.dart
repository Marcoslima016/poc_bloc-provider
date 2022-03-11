import 'package:flutter/material.dart';

import 'login.imports.dart';

class LoginView3 extends StatelessWidget {
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
                          width: w * 35,
                          child: Image.asset("assets/logo1.png"),
                        ),

                        SizedBox(height: h * 1.5),

                        Text(
                          "Cerveja na mão num passe de mágica",
                          textAlign: TextAlign.center,
                        ),

                        // Image.asset("assets/logo1.png"),

                        ///------------- FORMULARIO -------------

                        Padding(
                          padding: EdgeInsets.only(top: h * 4, bottom: h * 2.6),
                          child: Text(
                            'Entre com seu login',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: h * 3.2, fontWeight: FontWeight.w600),
                          ),
                        ),

                        LoginForm(),

                        ///---------- BOTAO CADASTRAR -----------

                        // SizedBox(height: 30),
                        // Text("CADASTRAR!"),
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
                    child: Text("Problema com o acesso? Solicite ajuda"),
                  ),
                ),
              ),

              // Text("!!!!!!!!!"),
            ],
          ),
        ),
      ),
    );
  }
}
