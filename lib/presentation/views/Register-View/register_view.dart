import 'package:bloc_login/logic/blocs/Register-Bloc/register_bloc.dart';
import 'package:bloc_login/presentation/views/Register-View/components/extension_register_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: const RegisterBody(),
    );
  }
}
