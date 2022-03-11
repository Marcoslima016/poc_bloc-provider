import 'package:flutter/material.dart';

import '../../lib.imports.dart';
import 'login.imports.dart';

class LoginRepository {
  //
  ILoginDatasource dataSource = LoginMockDataSource();
  Future<User?> authenticateUser(LoginCredentials credentials) async {
    try {
      return await dataSource.requestAutheticate(credentials);
    } catch (e) {
      //
    }
  }
}

class LoginCredentials {
  String? user;
  String? pass;
  LoginCredentials({
    @required this.user,
    @required this.pass,
  });
}
