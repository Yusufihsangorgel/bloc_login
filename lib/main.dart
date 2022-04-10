import 'package:bloc_login/logic/blocs/Login-Bloc/login_bloc.dart';
import 'package:bloc_login/logic/blocs/Register-Bloc/register_bloc.dart';
import 'package:bloc_login/presentation/views/Login-View/login_view.dart';
import 'package:bloc_login/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
        ),
        BlocProvider<RegisterBloc>(
          create: (context) => RegisterBloc(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginView(),
        onGenerateRoute: _appRouter.RouteChanger,
      ),
    );
  }
}
