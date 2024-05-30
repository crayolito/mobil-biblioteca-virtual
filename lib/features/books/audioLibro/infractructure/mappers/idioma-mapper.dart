import 'package:teslo_shop/features/books/audioLibro/domain/entities/idioma.dart';

class IdiomaMapper {
  Idioma fromJson(Map<String, dynamic> json) => Idioma(
        id: json["id"],
        nombre: json["nombre"],
        codigo: json["codigo"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson(Idioma idioma) => {
        "id": idioma.id,
        "nombre": idioma.nombre,
        "codigo": idioma.codigo,
        "created_at": idioma.createdAt.toIso8601String(),
        "updated_at": idioma.updatedAt.toIso8601String(),
      };
}
