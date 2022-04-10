part of 'extension_register_body.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _nameSurname(context),
              _emailField(context),
              _passwordField(context),
              _passwordTry(context),
              _numberField(context),
              _registerButton(context),
              _registerBilgileri,
            ],
          ),
        ),
      ),
    );
  }
}
