part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class OnAuth extends AuthEvent {
  final Usuario usuario;
  const OnAuth(this.usuario);
}

class OnRegisterUser extends AuthEvent {
  final String fullName;
  final String email;
  final String pasword;
  final String password2;
  const OnRegisterUser(this.fullName, this.email, this.pasword, this.password2);
}

class OnCheckAuthStatus extends AuthEvent {}

class OnLogout extends AuthEvent {
  final String? messageError;

  const OnLogout(this.messageError);
}

class OnTypePaquete extends AuthEvent {
  final TypePaquete tipoPaquete;
  const OnTypePaquete(this.tipoPaquete);
}
