part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {
  const RegisterEvent();
}

class EmailFieldEvent extends RegisterEvent {
  final String email;
  const EmailFieldEvent(this.email);
}

class PasswordFieldEvent extends RegisterEvent {
  final String password;

  const PasswordFieldEvent(this.password);
}

class PasswordTryFieldEvent extends RegisterEvent {
  final String passwordTry;

  const PasswordTryFieldEvent(this.passwordTry);
}

class NumberFieldEvent extends RegisterEvent {
  final String number;

  const NumberFieldEvent(this.number);
}

class NameSurnameFieldEvent extends RegisterEvent {
  final String nameSurname;

  const NameSurnameFieldEvent(this.nameSurname);
}

class RegisterButtonEvent extends RegisterEvent {
  const RegisterButtonEvent();
}
