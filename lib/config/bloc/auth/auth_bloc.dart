import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:teslo_shop/features/auth/domain/entities/usuario.dart';
import 'package:teslo_shop/features/auth/infrastucture/infrastructure.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final authRepositoryImpl = AuthRepositoryImpl();

  AuthBloc() : super(const AuthState()) {
    on<OnAuth>(_onAuth);
    on<OnLogout>(_onlogout);
    on<OnTypePaquete>((event, emit) {
      emit(state.copyWith(tipoPaquete: event.tipoPaquete));
    });
  }

  Future<void> _onAuth(OnAuth event, Emitter<AuthState> emit) async {
    emit(state.copyWith(user: event.usuario));
  }

  void _setLoggedUser(Usuario user, Emitter<AuthState> emit) {
    emit(state.copyWith(
        user: user, authStatus: AuthStatus.authenticated, errorMessage: ''));
  }

  Future<void> _onlogout(OnLogout event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
        authStatus: AuthStatus.notAuthentucated,
        user: null,
        errorMessage: event.messageError));
  }
}
