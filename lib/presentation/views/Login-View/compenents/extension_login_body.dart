import 'package:bloc_login/logic/utils/extension_media_query.dart';
import 'package:bloc_login/presentation/views/Register-View/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../logic/blocs/Login-Bloc/login_bloc.dart';

part 'login_body.dart';

extension on LoginBody {
  AppBar _appBar() {
    return AppBar(
      title: const Text('Login Page'),
    );
  }

  Widget _image(BuildContext context) {
    const url =
        'https://cdn.pixabay.com/photo/2021/06/07/13/46/user-6318008_960_720.png';
    return Image.network(
      url,
      width: context.width(0.9),
      height: context.height(0.35),
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
          context.read<LoginBloc>().add(PasswordFieldEvent(password));
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
          //Burada kullanıcadan gelen email veriyi event olarak bloc'a gönderiyoruz.
          context.read<LoginBloc>().add(EmailFieldEvent(email));
        },
      ),
    );
  }

  Widget _register(BuildContext context) {
    return Container(
        width: context.width(0.8),
        height: context.height(0.09),
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          child: const Text("Register"),
          onPressed: () {
            Navigator.pushNamed(context, '/register');
          },
        ));
  }

  Widget _loginButton(BuildContext context) => ElevatedButton(
      onPressed: () {
        //Burada da kullanıcı butona bastığında event olarak bloc'a mesaj bildiriyorum
        //kullanıcı loginButtonEvent'i aktifleştirdi. login_bloc içersindeki kodları çalıştır
        //örneğin firebase auth işlemlerini aktifleştirmek gibi.
        context.read<LoginBloc>().add(const LoginButtonEvent());
      },
      child: const Text('Giriş Yap'));

//Performans artışı için bir yöntem. Eğerki bu oluşturduğumuz methodlara parametre geçilmiyorsa
//Mesela yukarıdakilerde BuildContext parametre olarak geçirilmiş ama burada parametreye
//ihtiyacım olmadı. Bu yüzden get kullanabiliriz. get ile kullanmak bize performans artışı sağlayacaktır.
//Method parantezini silip method adının soluna get koymak yeterli.
//kullanıldığı yerde _loginBilgileri() ile kullanılıyordu eskiden get yaptığımız için onun da
//parentezini silmen yeterli olacaktır.
  BlocBuilder<LoginBloc, LoginState> get _loginBilgileri {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Text('Email: ${state.email}\nPassword: ${state.password}');
      },
    );
  }
}
