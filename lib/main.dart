import 'dart:convert';

import 'package:flutter/material.dart';

import 'lib.imports.dart';

Map<String, dynamic> parseJwt(String token) {
  final parts = token.split('.');
  if (parts.length != 3) {
    throw Exception('invalid token');
  }

  final payload = _decodeBase64(parts[1]);
  final payloadMap = json.decode(payload);
  if (payloadMap is! Map<String, dynamic>) {
    throw Exception('invalid payload');
  }

  return payloadMap;
}

String _decodeBase64(String str) {
  String output = str.replaceAll('-', '+').replaceAll('_', '/');

  switch (output.length % 4) {
    case 0:
      break;
    case 2:
      output += '==';
      break;
    case 3:
      output += '=';
      break;
    default:
      throw Exception('Illegal base64url string!"');
  }

  return utf8.decode(base64Url.decode(output));
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var teste = await parseJwt(
      "eyJhbGciOiJIUzI1NiJ9.eyJSb2xlIjoiQWRtaW4iLCJJc3N1ZXIiOiJJc3N1ZXIiLCJVc2VybmFtZSI6IkphdmFJblVzZSIsImV4cCI6MTY0Njk3MjY0NCwiaWF0IjoxNjQ2OTcyNjQ0fQ.4lID343ALM0Ao6aSUFfkmA2HvWNMY-6F3wbTyyznioI");

  var point = "";

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
      // home: LoginView(),
      home: LoginView3(),
    );
  }
}
