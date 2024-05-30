import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/libro.dart';

class LibroMapper {
  Libro fromJson(Map<String, dynamic> json) => Libro(
        id: json["id"],
        nombre: json["nombre"],
        autor: json["autor"],
        descripcion: json["descripcion"],
        fotoPortada: json["foto_portada"],
        categoriaId: json["categoria_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson(Libro libro) => {
        "id": libro.id,
        "nombre": libro.nombre,
        "autor": libro.autor,
        "descripcion": libro.descripcion,
        "foto_portada": libro.fotoPortada,
        "categoria_id": libro.categoriaId,
        "created_at": libro.createdAt.toIso8601String(),
        "updated_at": libro.updatedAt.toIso8601String(),
      };
}
