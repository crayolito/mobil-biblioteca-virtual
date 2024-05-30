part of 'registro_form_bloc.dart';

class RegistroEvent extends Equatable {
  const RegistroEvent();

  @override
  List<Object> get props => [];
}

class OnSubmitRegistre extends RegistroEvent {
  final String nombre;
  final String email;
  final String password;
  const OnSubmitRegistre(
      {required this.nombre, required this.email, required this.password});
}

class OnChangeNombre extends RegistroEvent {
  final String nombre;
  const OnChangeNombre(this.nombre);
}

class OnChangeEmail extends RegistroEvent {
  final String email;
  const OnChangeEmail(this.email);
}

class OnChangePassword extends RegistroEvent {
  final String password;
  const OnChangePassword(this.password);
}
