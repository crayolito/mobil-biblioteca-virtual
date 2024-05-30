import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/entities/idioma.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/entities/voz.dart';
import 'package:teslo_shop/features/books/audioLibro/infractructure/repositories/audio_repository_impl.dart';

part 'audio_libro_event.dart';
part 'audio_libro_state.dart';

class AudioLibroBloc extends Bloc<AudioLibroEvent, AudioLibroState> {
  final audioRepositoryImpl = AudioRepositoryImpl();

  AudioLibroBloc() : super(AudioLibroState()) {
    on<OnGetIdiomas>(_onGetIdiomas);

    on<OnCleanVoces>((event, emit) async {
      emit(state.copyWith(voces: []));
    });

    on<OnGetVoces>((event, emit) async {
      try {
        final response = await audioRepositoryImpl.getVoces(event.id);
        emit(state.copyWith(voces: response));
      } catch (e) {
        throw Exception();
      }
    });

    on<OnUpdateVoces>((event, emit) async {
      emit(state.copyWith(query: event.codigoIdioma));
      add(OnGetVoces(state.query));
    });
  }

  Future<void> _onGetIdiomas(
      OnGetIdiomas event, Emitter<AudioLibroState> emit) async {
    try {
      final response = await audioRepositoryImpl.getIdiomas();
      await Future.delayed(Duration(seconds: 5));

      emit(state.copyWith(idiomas: response));
      // Future.microtask(() {
      //   print(state.idiomas);
      // });
    } catch (e) {
      throw Exception();
    }
  }
}
