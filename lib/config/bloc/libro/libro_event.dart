part of 'libro_bloc.dart';

class LibroEvent extends Equatable {
  const LibroEvent();

  @override
  List<Object> get props => [];
}

class OnGetTodosLibros extends LibroEvent {
  const OnGetTodosLibros();
}

class OnChangeQuery extends LibroEvent {
  final String query;
  const OnChangeQuery({required this.query});
}

class OnEmpityQuery extends LibroEvent {
  const OnEmpityQuery();
}
