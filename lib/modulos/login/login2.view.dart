import 'package:flutter/material.dart';

import 'login.imports.dart';

class LoginView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    double w = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: h * 100,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Text("!!!!!!!!!!!!!!"),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              child: Text("!!!!!!!!!!!!!!"),
            ),
            //--------------------------
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  LoginForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
