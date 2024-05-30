import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/categoria.dart';
import 'package:teslo_shop/features/books/categoriasLibros/infrastructure/mappers/categoria_mapper.dart';

class Categorias {
  bool res;
  List<Categoria> categorias;

  Categorias({
    required this.res,
    required this.categorias,
  });

  factory Categorias.fromJson(Map<String, dynamic> json) => Categorias(
        res: json["res"],
        categorias: List<Categoria>.from(
            json["categorias"].map((x) => CategoriaMapper().fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "res": res,
        "categorias": List<dynamic>.from(
            categorias.map((x) => CategoriaMapper().toJson(x))),
      };
}
