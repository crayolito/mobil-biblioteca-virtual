import 'package:teslo_shop/features/auth/domain/entities/usuario.dart';
import 'package:teslo_shop/features/auth/infrastucture/infrastructure.dart';

class UsuarioReponse {
  bool res;
  Usuario user;

  UsuarioReponse({
    required this.res,
    required this.user,
  });

  factory UsuarioReponse.fromJson(Map<String, dynamic> json) => UsuarioReponse(
        res: json["res"],
        user: UsuarioMapper().fromJson(json["user"]),
      );
}
