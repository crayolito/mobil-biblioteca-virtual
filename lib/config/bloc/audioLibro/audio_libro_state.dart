part of 'audio_libro_bloc.dart';

class AudioLibroState extends Equatable {
  final List<Idioma> idiomas;
  final List<Voz> voces;
  final int query;

  AudioLibroState({
    this.query = 0,
    List<Idioma>? idiomas,
    List<Voz>? voces,
  })  : idiomas = idiomas ?? [],
        voces = voces ?? [];

  AudioLibroState copyWith(
          {List<Idioma>? idiomas, List<Voz>? voces, int? query}) =>
      AudioLibroState(
          idiomas: idiomas ?? this.idiomas,
          voces: voces ?? this.voces,
          query: query ?? this.query);

  @override
  List<Object> get props => [idiomas, voces, query];
}
