part of 'extension_login_body.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _image(context),
              _emailField(context),
              _passwordField(context),
              _loginButton(context),
              _register(context),
              _loginBilgileri,
            ],
          ),
        ),
      ),
    );
  }
}
