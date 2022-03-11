import 'package:flutter/material.dart';

import 'lib.imports.dart';

class AppController {
  //
  // late User loggedUser;
  User? loggedUser;

  bool autheticated = false;

  AppStyle style = AppStyle(
    primaryColor: Color.fromRGBO(255, 179, 0, 1.0),
    secundaryColor: Color.fromRGBO(50, 50, 50, 1.0),
  );
}

class AppStyle {
  Color? primaryColor;
  Color? secundaryColor;
  AppStyle({
    this.primaryColor,
    this.secundaryColor,
  });
}
