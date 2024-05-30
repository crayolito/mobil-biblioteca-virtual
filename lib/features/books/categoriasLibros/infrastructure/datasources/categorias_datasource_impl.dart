import 'package:teslo_shop/config/constants/environment.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/datasources/categoria_datasource.dart';
import 'package:dio/dio.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/categoria.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/categorias.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/libro.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/libros.dart';

class CategoriasDataSourceImpl extends CategoriasDataSource {
  final dio = Dio(BaseOptions(
    baseUrl: Environment.apiURL,
  ));

  @override
  Future<List<Categoria>> getCategorias() async {
    try {
      final response = await dio.get('/getCategorias');
      final categoriaResponse = Categorias.fromJson(response.data);
      return categoriaResponse.categorias;
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<List<Libro>> getLibroCategorias(int id) async {
    try {
      final response = await dio.get('/getLibrosPorCategorias/${id}');
      final librosResponse = Libros.fromJson(response.data);
      return librosResponse.librosData;
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<List<Libro>> getTodoLibros() async {
    try {
      final response = await dio.get('/getLibros');
      final librosResponse = Libros.fromJsonPersonalizado(response.data);
      return librosResponse.librosData;
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<List<Libro>> getFavoritos(int id) async {
    try {
      final response = await dio.get('/getMisFavoritos/id');
      final librosResponse = Libros.fromJsonFavoritos(response.data);
      return librosResponse.librosData;
    } catch (e) {
      throw Exception();
    }
  }
}
