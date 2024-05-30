import 'package:teslo_shop/features/books/audioLibro/domain/entities/voz.dart';

class VozMapper {
  Voz fromJson(Map<String, dynamic> json) => Voz(
        id: json["id"],
        nombre: json["nombre"],
        codigoVoz: json["codigo_voz"],
        idiomaId: json["idioma_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson(Voz voz) => {
        "id": voz.id,
        "nombre": voz.nombre,
        "codigo_voz": voz.codigoVoz,
        "idioma_id": voz.idiomaId,
        "created_at": voz.createdAt.toIso8601String(),
        "updated_at": voz.updatedAt.toIso8601String(),
      };
}
