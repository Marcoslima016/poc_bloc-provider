import '../../../lib.imports.dart';

abstract class ILoginDatasource {
  Future<User> requestAutheticate(LoginCredentials credentials);
}
