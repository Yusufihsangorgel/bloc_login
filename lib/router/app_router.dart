import 'package:bloc_login/presentation/views/Login-View/login_view.dart';
import 'package:bloc_login/presentation/views/Register-View/register_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? RouteChanger(settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LoginView());
      case '/register':
        return MaterialPageRoute(builder: (_) => const RegisterView());
      default:
        return null;
    }
  }
}
