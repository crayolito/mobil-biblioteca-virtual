import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:teslo_shop/features/books/categoriasLibros/domain/entities/libro.dart';
import 'package:teslo_shop/features/books/categoriasLibros/infrastructure/repositories/categorias_repository_impl.dart';
part 'libro_event.dart';
part 'libro_state.dart';

class LibroBloc extends Bloc<LibroEvent, LibroState> {
  final categoriasRepositoryImpl = CategoriasRepositoryImpl();

  LibroBloc() : super(const LibroState()) {
    on<OnGetTodosLibros>(_onGetTodosLibros);
    on<OnChangeQuery>(_onChangeQueryLC);
    on<OnEmpityQuery>(_onEmpityQueryLC);
  }

  Future<void> _onGetTodosLibros(
      OnGetTodosLibros event, Emitter<LibroState> emit) async {
    try {
      final libros = await categoriasRepositoryImpl.getTodoLibros();
      emit(state.copyWith(todosLibros: libros, queryLibros: libros));
      print(state.todosLibros);
    } catch (e) {
      throw Exception();
    }
  }

  void _onChangeQueryLC(OnChangeQuery event, Emitter<LibroState> emit) {
    final listaPrimaria = state.todosLibros;
    final List<Libro> selectosLibros = listaPrimaria
        .where((libro) => libro.nombre.contains(event.query))
        .toList();
    emit(state.copyWith(queryLibros: selectosLibros));
  }

  void _onEmpityQueryLC(OnEmpityQuery event, Emitter<LibroState> emit) {
    emit(state.copyWith(queryLibros: state.todosLibros));
  }
}
