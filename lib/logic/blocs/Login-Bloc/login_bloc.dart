import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    //Kullanıcadan gelen email veriyi alıp LoginState'e atıyorum.
    //Burada copyWith methodu kullandık. ThemeData ile çalıştıysan eğer orada da kullanılır.
    //Yanlızca belirli değişkenleri değiştirmek istediğimizde kullanırız.
    //Bende yanlızca LoginState'in içindeki email'i değiştirmek istediğim için
    //Kendim copyWith methodu oluşturdum. Bu sayede event geldiği zaman(yani kullanıcı ekranında
    //herhangi bir değişkiliğe sebep olduğu tüm durumlar örneğin textformfield'lar herhangi bir veri
    //yokken ki hali ile yazı yazdığı hali aynı değil. Bu state'i değişti demek oluyor. State'i değiştiren
    //tüm durumlarada event diyorum.) 
    //
    //yanlızca LoginState'deki email değişecek. Aksi taktirde LoginState bizden iki veri istiyor.
    //Hem email hem password ikisini birden veremem çünkü her textformfield bize bir veri veriyor
    //İstersen deneyipte tecrübe edebilirsin. copyWith methodu olmadan kullanmaya çalışabilirsin

    //login_bloc sayfamız bizim mvvm deki view_model kısmı olarak düşünebilirsin.

    on<EmailFieldEvent>(
        (event, emit) => emit(state.copyWith(email: event.email)));

    on<PasswordFieldEvent>(
        (event, emit) => emit(state.copyWith(password: event.password)));

    on<LoginButtonEvent>((event, emit) {
      //Login butonuna basıldığında yapılacak işlemler...
      //firebase auth işlemi de olabilir.
      print('Giriş Yapıldı');
    });
  }
}
