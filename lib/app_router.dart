import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'lib.imports.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => LoginView(),
        );
      case "/home":
        return MaterialPageRoute(
          builder: (_) => HomeView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Container(),
        );
        ;
    }
  }
}
