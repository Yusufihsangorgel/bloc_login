part of 'login_bloc.dart';

@immutable
//Ekranda kullanmak istediğim değişkenleri temsil eder LoginState.
//LoginState'in içindeki tüm herşeyi UI da gösterebiliriz.
class LoginState {
  final String email;
  final String password;

  const LoginState({this.email = '', this.password = ''});

  //Bu copyWith methodunu kullanmaya çalış sürekli çok mantıklı bir method. Yanında equatable ile kullanılması lazım
  //ama şuanlık sebebini anla.
  //Benim login sayfamda 2 tane TextFormField var. ikisinden de veri gelecek ve AYRI AYRI GELECEK
  // şimdi login_bloc sayfasına geç orada daha anlaşılır olacak.
  LoginState copyWith({String? email, String? password}) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
