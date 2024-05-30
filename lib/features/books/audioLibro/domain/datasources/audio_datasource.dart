import 'package:teslo_shop/features/books/audioLibro/domain/entities/idioma.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/entities/voz.dart';

abstract class AudioDataSource {
  Future<List<Idioma>> getIdiomas();
  Future<List<Voz>> getVoces(int id);
}