import 'package:flutter/material.dart';

class LoginView6 extends StatelessWidget {
  // const LoginView6({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    double w = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      body: Container(
        width: w * 100,
        height: h * 100,
        child: Column(
          children: [
            Container(
              height: h * 90,
              color: Colors.red,
            ),
            Container(
              height: h * 10,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
