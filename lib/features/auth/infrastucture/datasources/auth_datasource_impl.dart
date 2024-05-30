import 'package:dio/dio.dart';
import 'package:teslo_shop/config/constants/environment.dart';
import 'package:teslo_shop/features/auth/domain/domain.dart';
import 'package:teslo_shop/features/auth/domain/entities/usuario.dart';
import 'package:teslo_shop/features/auth/infrastucture/infrastructure.dart';

class AuthDataSourceImpl extends AuthDataSource {
  final dio = Dio(BaseOptions(
    baseUrl: Environment.apiURL,
  ));

  @override
  Future<Usuario> checkAuthStatus(String token) {
    throw UnimplementedError();
  }

  @override
  Future<Usuario> login(String email, String password) async {
    try {
      final response = await dio
          .post('/auth/login', data: {'email': email, 'password': password});

      final usuarioReponse = UsuarioReponse.fromJson(response.data);
      return usuarioReponse.user;
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        throw CustomError(
            message: e.response?.data['message'] ?? 'Credenciales incorrectas');
      }
      // ignore: deprecated_member_use
      if (e.type == DioErrorType.connectionTimeout) {
        throw CustomError(message: 'Revisar conexion a Internet');
      }
      throw Exception();
    } catch (e) {
      throw CustomError(message: 'Sometring wrong happend');
    }
  }

  @override
  Future<Usuario> register(String nombre, String email, String password) async {
    try {
      final response = await dio.post('/crearUser',
          data: {'name': nombre, 'password': password, 'email': email});
      final usuarioReponse = UsuarioReponse.fromJson(response.data);
      return usuarioReponse.user;
    } catch (e) {
      throw CustomError(message: 'Sometring wrong happend');
    }
  }
}
