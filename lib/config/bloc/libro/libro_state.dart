part of 'libro_bloc.dart';

class LibroState extends Equatable {
  // TODOS LOS LIBROS
  final List<Libro> todosLibros;

  // AUX TODOS LOS LIBROS AL QUERY
  final List<Libro> queryLibros;

  //
  final List<Libro> favoritosLibros;

  const LibroState(
      {this.queryLibros = const [],
      this.todosLibros = const [],
      this.favoritosLibros = const []});

  LibroState copyWith(
          {List<Libro>? todosLibros,
          List<Libro>? queryLibros,
          List<Libro>? favoritosLibros}) =>
      LibroState(
          favoritosLibros: favoritosLibros ?? this.favoritosLibros,
          todosLibros: todosLibros ?? this.todosLibros,
          queryLibros: queryLibros ?? this.queryLibros);

  @override
  List<Object> get props => [todosLibros, queryLibros, favoritosLibros];
}
