import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/libro.dart';
import 'package:teslo_shop/features/books/categoriasLibros/infrastructure/mappers/libro_mapper.dart';

class Libros {
  bool respuesta;
  List<Libro> librosData;

  Libros({
    required this.respuesta,
    required this.librosData,
  });

  factory Libros.fromJson(Map<String, dynamic> json) => Libros(
        respuesta: json["respuesta"],
        librosData: List<Libro>.from(
            json["libros_categorias"].map((x) => LibroMapper().fromJson(x))),
      );

  factory Libros.fromJsonPersonalizado(Map<String, dynamic> json) => Libros(
        respuesta: json["respuesta"],
        librosData: List<Libro>.from(
            json["libros"].map((x) => LibroMapper().fromJson(x))),
      );

  factory Libros.fromJsonFavoritos(Map<String, dynamic> json) => Libros(
        respuesta: json["respuesta"],
        librosData: List<Libro>.from(
            json["favoritos"].map((x) => LibroMapper().fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "respuesta": respuesta,
        "libros_categorias":
            List<dynamic>.from(librosData.map((x) => LibroMapper().toJson(x))),
      };
}
