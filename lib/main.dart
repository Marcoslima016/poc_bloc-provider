import 'package:flutter/material.dart';

import 'lib.imports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var teste;
  MyApp({this.teste});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
