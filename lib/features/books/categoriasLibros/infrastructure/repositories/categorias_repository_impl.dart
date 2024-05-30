import 'package:teslo_shop/features/books/categoriasLibros/domain/datasources/categoria_datasource.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/categoria.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/libro.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/repositories/categoria_repository.dart';
import 'package:teslo_shop/features/books/categoriasLibros/infrastructure/datasources/categorias_datasource_impl.dart';

class CategoriasRepositoryImpl extends CategoriasRepository {
  final CategoriasDataSource dataSource;

  CategoriasRepositoryImpl({CategoriasDataSource? dataSource})
      : dataSource = dataSource ?? CategoriasDataSourceImpl();

  @override
  Future<List<Categoria>> getCategorias() async {
    return await dataSource.getCategorias();
  }

  @override
  Future<List<Libro>> getLibroCategorias(int id) async {
    return await dataSource.getLibroCategorias(id);
  }

  @override
  Future<List<Libro>> getTodoLibros() async {
    return await dataSource.getTodoLibros();
  }

  @override
  Future<List<Libro>> getFavoritos(int id) async {
    return await dataSource.getFavoritos(id);
  }
}
