import 'package:teslo_shop/features/books/audioLibro/domain/datasources/audio_datasource.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/entities/idioma.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/entities/voz.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/repositories/audio_repository.dart';
import 'package:teslo_shop/features/books/audioLibro/infractructure/datasources/audio_datasource_impl.dart';

class AudioRepositoryImpl extends AudioRepository {
  final AudioDataSource dataSource;

  AudioRepositoryImpl({AudioDataSource? dataSource})
      : dataSource = dataSource ?? AudioDataSourceImpl();

  @override
  Future<List<Idioma>> getIdiomas() async {
    return await dataSource.getIdiomas();
  }

  @override
  Future<List<Voz>> getVoces(int id) async {
    return await dataSource.getVoces(id);
  }
}
