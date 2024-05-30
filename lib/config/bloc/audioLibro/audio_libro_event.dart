part of 'audio_libro_bloc.dart';

class AudioLibroEvent extends Equatable {
  const AudioLibroEvent();

  @override
  List<Object> get props => [];
}

class OnGetIdiomas extends AudioLibroEvent {
  const OnGetIdiomas();
}

class OnGetVoces extends AudioLibroEvent {
  final int id;
  const OnGetVoces(this.id);
}

class OnUpdateVoces extends AudioLibroEvent {
  final int codigoIdioma;
  const OnUpdateVoces(this.codigoIdioma);
}

class OnCleanVoces extends AudioLibroEvent {
  const OnCleanVoces();
}