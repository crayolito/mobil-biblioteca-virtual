import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:teslo_shop/config/bloc/auth/auth_bloc.dart';
import 'package:teslo_shop/features/shared/infrastructure/inputs/email.dart';
import 'package:teslo_shop/features/shared/infrastructure/inputs/password.dart';

part 'login_form_event.dart';
part 'login_form_state.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final StreamController<LoginFormState> _loginController = StreamController();
  final AuthBloc authBloc;

  LoginFormBloc({required this.authBloc}) : super(const LoginFormState()) {
    on<LoginFormEvent>((event, emit) {});
    on<OnEmailChange>(_onEmailChange);
    on<OnPasswordChanged>(_onPasswordChanged);
    on<OnFormSubmit>(_onFormSubmit);
  }

  void _onEmailChange(OnEmailChange event, Emitter<LoginFormState> emit) {
    final newEmail = Email.dirty(event.email);
    emit(state.copyWith(
        email: newEmail, isValid: Formz.validate([newEmail, state.password])));
  }

  void _onPasswordChanged(
      OnPasswordChanged event, Emitter<LoginFormState> emit) {
    final newPassword = Password.dirty(event.password);
    emit(state.copyWith(
        password: newPassword,
        isValid: Formz.validate([newPassword, state.email])));
  }

  void _onFormSubmit(OnFormSubmit event, Emitter<LoginFormState> emit) async {
    _touchEveryFiled(event, emit);
    if (!state.isValid) {
      return;
    }
    // authBloc.add(OnLoginUser(state.email.value, state.password.value));
  }

  _touchEveryFiled(OnFormSubmit event, Emitter<LoginFormState> emit) {
    final email = Email.dirty(state.email.value);
    final password = Password.dirty(state.password.value);
    emit(state.copyWith(
        isFormPosted: true,
        email: email,
        password: password,
        isValid: Formz.validate([email, password])));
  }

  @override
  Future<void> close() {
    _loginController.close();
    return super.close();
  }
}
