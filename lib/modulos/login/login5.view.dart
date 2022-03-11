import 'package:flutter/material.dart';

import '../../lib.imports.dart';

class LoginView5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    double w = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      appBar: AppBar(centerTitle: false, title: const Text("MyApp"), actions: <Widget>[
        FlatButton(
          textColor: Colors.white,
          child: const Text("Logout"),
          onPressed: () {
            //@todo Clear isAuth state
            Navigator.pushReplacementNamed(context, '/login');
          },
        )
      ]),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 0.0, left: 16.0, right: 16.0),
            child: Form(
              // key: _formKey,
              child: SingleChildScrollView(
                reverse: true,
                child: Column(children: <Widget>[
                  ///------------------------------------------
                  ///
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

                  Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)),

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
                    padding: EdgeInsets.only(
                      top: 45,
                      bottom: 4,
                    ),
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

                  ///---------------------------------
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
