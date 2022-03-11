import 'package:poc_entrevista/models/user.model.dart';

import 'login.imports.dart';

//[========================================== DATASOURCE ==========================================]

class LoginMockDataSource implements ILoginDatasource {
  static MockHttpClient httpClient = MockHttpClient();

  @override
  Future<User> requestAutheticate(LoginCredentials credentials) async {
    try {
      Response response = await httpClient.post(
        "www.mock-takeandgo.com/login",
        dataJson: {
          "user": credentials.user,
          "pass": credentials.pass,
        },
      );
      User userData = User.fromJwt(response.data);
      return userData;
    } catch (e) {
      // return Exception(e);
    }
    return User();
  }
}

//[========================================= HTTP CLIENT =========================================]

class MockHttpClient {
  //POST
  Future<Response> post(String endPoint, {bool authenticatedRequest = false, Map? dataJson}) async {
    if (dataJson?["user"] != "admin" || dataJson?["pass"] != "admin") {
      Exception("Usuário ou senha inválidos");
    }

    return Response(
      data:
          "eyJhbGciOiJIUzI1NiJ9.eyJSb2xlIjoiQWRtaW4iLCJJc3N1ZXIiOiJJc3N1ZXIiLCJVc2VybmFtZSI6IkphdmFJblVzZSIsImV4cCI6MTY0Njk3MjY0NCwiaWF0IjoxNjQ2OTcyNjQ0fQ.4lID343ALM0Ao6aSUFfkmA2HvWNMY-6F3wbTyyznioI",
    );
  }
}

class Response {
  var data;
  Response({
    this.data,
  });
}
