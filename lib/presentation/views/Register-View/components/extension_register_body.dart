import 'package:bloc_login/logic/blocs/Register-Bloc/register_bloc.dart';
import 'package:bloc_login/logic/utils/extension_media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_body.dart';

extension on RegisterBody {
  AppBar _appBar() {
    return AppBar(
      title: const Text('Register Page'),
    );
  }

  Widget _passwordField(BuildContext context) {
    return Container(
      width: context.width(0.8),
      height: context.height(0.09),
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        //Şifreyi **** diye göstermeye yarar.(obscureText)
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onChanged: (password) {
          //Burada kullanıcadan gelen password veriyi event olarak bloc'a gönderiyoruz.
          context.read<RegisterBloc>().add(PasswordFieldEvent(password));
        },
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return Container(
      width: context.width(0.8),
      height: context.height(0.09),
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onChanged: (email) {
          context.read<RegisterBloc>().add(EmailFieldEvent(email));
        },
      ),
    );
  }

  Widget _numberField(BuildContext context) {
    return Container(
      width: context.width(0.8),
      height: context.height(0.09),
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Number',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onChanged: (number) {
          context.read<RegisterBloc>().add(NumberFieldEvent(number));
        },
      ),
    );
  }

  Widget _passwordTry(BuildContext context) {
    return Container(
      width: context.width(0.8),
      height: context.height(0.09),
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Password Try',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onChanged: (passwordTry) {
          context.read<RegisterBloc>().add(PasswordTryFieldEvent(passwordTry));
        },
      ),
    );
  }

  Widget _nameSurname(BuildContext context) {
    return Container(
      width: context.width(0.8),
      height: context.height(0.09),
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Name Surname',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onChanged: (nameSurname) {
          context.read<RegisterBloc>().add(NameSurnameFieldEvent(nameSurname));
        },
      ),
    );
  }

  Widget _registerButton(BuildContext context) {
    return ElevatedButton(
      child: const Text('Register'),
      onPressed: () {
        context.read<RegisterBloc>().add(const RegisterButtonEvent());
        Navigator.pushNamed(context, '/');
      },
    );
  }

  BlocBuilder<RegisterBloc, RegisterState> get _registerBilgileri {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return Text(
            "Name : ${state.nameSurname}\nEmail : ${state.email}\nPassword : ${state.password}\nPassword Try : ${state.passwordTry}\nNumber : ${state.number}");
      },
    );
  }
}
