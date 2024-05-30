part of 'registro_form_bloc.dart';

class RegistroState extends Equatable {
  final String nombre;
  final String email;
  final String password;
  const RegistroState({this.nombre = "", this.email = "", this.password = ""});

  RegistroState copyWith({String? nombre, String? email, String? password}) =>
      RegistroState(
          nombre: nombre ?? this.nombre,
          email: email ?? this.email,
          password: password ?? this.password);

  @override
  List<Object> get props => [nombre, email, password];
}
