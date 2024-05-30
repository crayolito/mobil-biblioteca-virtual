import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/categoria.dart';

class CategoriaMapper {
  Categoria fromJson(Map<String, dynamic> json) => Categoria(
        id: json["id"],
        nombre: json["nombre"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        descripcion: json["descripcion"],
      );

  Map<String, dynamic> toJson(Categoria categoria) => {
        "id": categoria.id,
        "nombre": categoria.nombre,
        "created_at": categoria.createdAt.toIso8601String(),
        "updated_at": categoria.updatedAt.toIso8601String(),
        "descripcion": categoria.descripcion,
      };
}
