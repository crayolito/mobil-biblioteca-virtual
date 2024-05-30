import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/categoria.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/libro.dart';

abstract class CategoriasRepository {
  Future<List<Categoria>> getCategorias();
  Future<List<Libro>> getTodoLibros();
  Future<List<Libro>> getFavoritos(int id);
  Future<List<Libro>> getLibroCategorias(int id);
}
