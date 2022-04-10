import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<EmailFieldEvent>(
        (event, emit) => emit(state.copyWith(email: event.email)));

    on<PasswordFieldEvent>(
        (event, emit) => emit(state.copyWith(password: event.password)));

    on<PasswordTryFieldEvent>(
        (event, emit) => emit(state.copyWith(passwordTry: event.passwordTry)));

    on<NumberFieldEvent>(
        (event, emit) => emit(state.copyWith(number: event.number)));

    on<NameSurnameFieldEvent>(
        (event, emit) => emit(state.copyWith(nameSurname: event.nameSurname)));

    on<RegisterButtonEvent>((event, emit) {
      print("Kayıt olundu");
    });
  }
}
