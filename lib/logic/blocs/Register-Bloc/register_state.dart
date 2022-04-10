part of 'register_bloc.dart';

@immutable
class RegisterState {
  final String email;
  final String password;
  final String passwordTry;
  final String number;
  final String nameSurname;
  const RegisterState(
      {this.email = "",
      this.password = "",
      this.passwordTry = "",
      this.number = "",
      this.nameSurname = ''});

  RegisterState copyWith(
      {String? nameSurname,
      String? email,
      String? password,
      String? passwordTry,
      String? number}) {
    return RegisterState(
      nameSurname: nameSurname ?? this.nameSurname,
      email: email ?? this.email,
      password: password ?? this.password,
      passwordTry: passwordTry ?? this.passwordTry,
      number: number ?? this.number,
    );
  }
}
