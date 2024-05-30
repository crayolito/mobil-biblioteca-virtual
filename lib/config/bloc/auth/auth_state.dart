part of 'auth_bloc.dart';

enum AuthStatus { checking, authenticated, notAuthentucated }

enum TypePaquete { none, paquete1, paquete2, paquete3 }

class AuthState extends Equatable {
  final AuthStatus authStatus;
  final Usuario? user;
  final String errorMessage;
  final TypePaquete tipoPaquete;

  const AuthState(
      {this.authStatus = AuthStatus.checking,
      this.user,
      this.tipoPaquete = TypePaquete.none,
      this.errorMessage = ''});

  AuthState copyWith(
          {AuthStatus? authStatus,
          Usuario? user,
          String? errorMessage,
          TypePaquete? tipoPaquete}) =>
      AuthState(
          authStatus: authStatus ?? this.authStatus,
          user: user ?? this.user,
          errorMessage: errorMessage ?? this.errorMessage,
          tipoPaquete: tipoPaquete ?? this.tipoPaquete);

  @override
  List<Object?> get props => [authStatus, user, errorMessage, tipoPaquete];
}
