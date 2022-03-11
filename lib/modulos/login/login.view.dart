import 'package:flutter/material.dart';

import 'login.imports.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    double w = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///---------------- LOGO ----------------
            SizedBox(height: 240),

            ///------------- FORMULARIO -------------
            ///
            Image.asset("assets/logo1.png"),
            LoginForm(),

            // Container(
            //   height: h * 90,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       LoginForm(),
            //     ],
            //   ),
            // ),

            ///------------- CADASTRAR --------------

            ///---------- SOLICITAR AJUDA -----------
          ],
        ),
      ),
    );
  }
}
