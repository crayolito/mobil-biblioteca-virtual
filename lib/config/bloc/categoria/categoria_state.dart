part of 'categoria_bloc.dart';

class CategoriaState extends Equatable {
  final Categoria? categoriaSelect;

  //
  final List<Categoria> categorias;

  // TODOS LOS LIBROS POR CATEGORIA
  final List<Libro> todosLibrosCategoria;
  final List<Libro> librosCategoria;

  const CategoriaState(
      {this.categoriaSelect,
      this.categorias = const [],
      this.todosLibrosCategoria = const [],
      this.librosCategoria = const []});

  CategoriaState copyWith(
          {Categoria? categoriaSelect,
          List<Categoria>? categorias,
          List<Libro>? todosLibrosCategoria,
          List<Libro>? librosCategoria}) =>
      CategoriaState(
          categoriaSelect: categoriaSelect ?? this.categoriaSelect,
          categorias: categorias ?? this.categorias,
          todosLibrosCategoria:
              todosLibrosCategoria ?? this.todosLibrosCategoria,
          librosCategoria: librosCategoria ?? this.librosCategoria);

  @override
  List<Object?> get props =>
      [categorias, todosLibrosCategoria, librosCategoria, categoriaSelect];
}
