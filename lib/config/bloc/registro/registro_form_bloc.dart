import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:teslo_shop/config/bloc/auth/auth_bloc.dart';
import 'package:teslo_shop/features/auth/infrastucture/infrastructure.dart';

part 'registro_form_event.dart';
part 'registro_form_state.dart';

class RegistroBloc extends Bloc<RegistroEvent, RegistroState> {
  final authRepositoryImpl = AuthRepositoryImpl();
  final AuthBloc authBloc;
  RegistroBloc({required this.authBloc}) : super(RegistroState()) {
    on<OnSubmitRegistre>(_onSubmitRegistre);
    on<OnChangeNombre>((event, emit) {
      emit(state.copyWith(nombre: event.nombre));
    });
    on<OnChangeEmail>((event, emit) {
      emit(state.copyWith(email: event.email));
    });
    on<OnChangePassword>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
  }

  Future<void> _onSubmitRegistre(
      OnSubmitRegistre event, Emitter<RegistroState> emit) async {
    try {
      final response = await authRepositoryImpl.register(
          event.nombre, event.email, event.password);
      authBloc.add(OnAuth(response));
    } catch (e) {
      throw Exception();
    }
  }
}
