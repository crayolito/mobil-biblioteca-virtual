import 'package:teslo_shop/features/auth/domain/entities/usuario.dart';

abstract class AuthRepository {
  Future<Usuario> login(String email, String password);
  Future<Usuario> register(String nombre, String email, String password);
  Future<Usuario> checkAuthStatus(String token);
}
