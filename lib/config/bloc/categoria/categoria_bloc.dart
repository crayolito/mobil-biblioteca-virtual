import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/categoria.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/libro.dart';
import 'package:teslo_shop/features/books/categoriasLibros/infrastructure/repositories/categorias_repository_impl.dart';

part 'categoria_event.dart';
part 'categoria_state.dart';

class CategoriaBloc extends Bloc<CategoriaEvent, CategoriaState> {
  final categoriasRepositoryImpl = CategoriasRepositoryImpl();

  CategoriaBloc() : super(CategoriaState()) {
    on<OnGetTodosLibrosCategoria>(_onGetTodosLibrosCategoria);
    on<OnGetCategorias>(_onGetCategorias);
    on<OnChangeCategoriaSelect>(_onChangeCategoriaSelect);
    on<OnChangeQueryLC>(_onChangeQueryLC);
    on<OnEmpityQueryLC>(_onEmpityQueryLC);
  }

  Future<void> _onGetCategorias(
      OnGetCategorias event, Emitter<CategoriaState> emit) async {
    try {
      final categorias = await categoriasRepositoryImpl.getCategorias();
      emit(state.copyWith(categorias: categorias));
    } catch (e) {
      throw Exception();
    }
  }

  Future<void> _onGetTodosLibrosCategoria(
      OnGetTodosLibrosCategoria event, Emitter<CategoriaState> emit) async {
    try {
      final libros =
          await categoriasRepositoryImpl.getLibroCategorias(event.idCategoria);
      emit(state.copyWith(
          librosCategoria: libros, todosLibrosCategoria: libros));
    } catch (e) {
      throw Exception();
    }
  }

  Future<void> _onChangeCategoriaSelect(
      OnChangeCategoriaSelect event, Emitter<CategoriaState> emit) async {
    emit(state.copyWith(categoriaSelect: event.categoriaSelect));
    final int id = state.categoriaSelect!.id;
    add(OnGetTodosLibrosCategoria(idCategoria: id));
  }

  void _onChangeQueryLC(OnChangeQueryLC event, Emitter<CategoriaState> emit) {
    final listaPrimaria = state.todosLibrosCategoria;
    final List<Libro> selectosLibros = listaPrimaria
        .where((libro) => libro.nombre.contains(event.query))
        .toList();
    emit(state.copyWith(librosCategoria: selectosLibros));
  }

  void _onEmpityQueryLC(OnEmpityQueryLC event, Emitter<CategoriaState> emit) {
    emit(state.copyWith(librosCategoria: state.todosLibrosCategoria));
  }

  String getTipoCategoria(int id) {
    String valor = "";
    List<Categoria> listaR = state.categorias;
    listaR.forEach((categoria) {
      if (categoria.id == id) {
        valor = categoria.nombre;
      }
    });
    return valor;
  }
}
