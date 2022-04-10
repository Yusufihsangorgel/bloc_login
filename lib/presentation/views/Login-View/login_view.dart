import 'package:bloc_login/logic/blocs/Login-Bloc/login_bloc.dart';
import 'package:bloc_login/presentation/views/Login-View/compenents/extension_login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Burada global provider kullanmadım. Bu yüzden LoginBody diye ayrı bir statelessWidget içine almak zorundayım
    //Bloc kullanacaksam eğer. Sebebi context ağacının her zaman en az bir üst context'ten bilgi almak istemesi.
    //Biz BlocProvider ile context'e LoginBloc() nesnesini enjekte ettik ama diğer widget'ların bunu kullanabilmesi
    //için en az bir context üstünde olması lazım.
    //context ağacını kafanda canlandırmak gerekirse
    //LoginView(birinci context)
    //LoginBody(ikinci context)
    //LoginBody bir üst contextine gidip(LoginView'in) içindeki verileri okuyabilir artık.
    //LoginBody'i statelessWidget yapmadan kullanırsan yani bir context oluşturmadan kullanırsan context hatası verir.
    //Her yeni StatelessWidget bize yeni bir context verir!!!!!
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: const LoginBody(),
    );
  }
}
