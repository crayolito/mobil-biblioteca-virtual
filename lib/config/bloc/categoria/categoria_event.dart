part of 'categoria_bloc.dart';

class CategoriaEvent extends Equatable {
  const CategoriaEvent();

  @override
  List<Object> get props => [];
}

class OnGetCategorias extends CategoriaEvent {
  const OnGetCategorias();
}

class OnGetTodosLibrosCategoria extends CategoriaEvent {
  final int idCategoria;
  const OnGetTodosLibrosCategoria({required this.idCategoria});
}

class OnChangeCategoriaSelect extends CategoriaEvent {
  final Categoria categoriaSelect;
  const OnChangeCategoriaSelect({required this.categoriaSelect});
}

class OnChangeQueryLC extends CategoriaEvent {
  final String query;
  const OnChangeQueryLC({required this.query});
}

class OnEmpityQueryLC extends CategoriaEvent {
  const OnEmpityQueryLC();
}
