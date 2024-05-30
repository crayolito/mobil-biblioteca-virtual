import 'package:teslo_shop/features/auth/domain/entities/usuario.dart';

class UsuarioMapper {
  Usuario fromJson(Map<String, dynamic> json) => Usuario(
        name: json["name"],
        email: json["email"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
        profilePhotoUrl: json["profile_photo_url"],
      );

  Map<String, dynamic> toJson(Usuario usuario) => {
        "name": usuario.name,
        "email": usuario.email,
        "updated_at": usuario.updatedAt.toIso8601String(),
        "created_at": usuario.createdAt.toIso8601String(),
        "id": usuario.id,
        "profile_photo_url": usuario.profilePhotoUrl,
      };
}
