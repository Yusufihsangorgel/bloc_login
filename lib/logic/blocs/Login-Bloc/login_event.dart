part of 'login_bloc.dart';

// immutable bizim değişkenlerimizi sabit yapmamızı öneren anahtar keilmedir
// değişkenlerimize final anahtar kelimesini yazmamızı ister.
@immutable
abstract class LoginEvent {
  //Performanslı olması için yapıyoruz.
  //bu sınıfı const lamazsak eğer, bu sınıftan türetilen emailfieldevent ve diğerlerinde
  //const anahtar kelimesini kullanamayız.
  const LoginEvent();
}

class EmailFieldEvent extends LoginEvent {
  final String email;
  const EmailFieldEvent(this.email);
}

class PasswordFieldEvent extends LoginEvent {
  final String password;

  const PasswordFieldEvent(this.password);
}

class LoginButtonEvent extends LoginEvent {
  //Performanslı olması için yapıyoruz.
  const LoginButtonEvent();
}
