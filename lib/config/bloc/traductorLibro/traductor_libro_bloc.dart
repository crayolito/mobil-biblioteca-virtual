import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'traductor_libro_event.dart';
part 'traductor_libro_state.dart';

class TraductorLibroBloc
    extends Bloc<TraductorLibroEvent, TraductorLibroState> {
  TraductorLibroBloc() : super(TraductorLibroState()) {
    on<TraductorLibroEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
