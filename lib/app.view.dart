import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lib.imports.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginView(),
      onGenerateRoute: AppRouter().generateRoute,
      initialBinding: AppBinding(),
    );
  }
}
