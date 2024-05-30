import 'package:dio/dio.dart';
import 'package:teslo_shop/config/constants/environment.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/datasources/audio_datasource.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/entities/idioma.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/entities/idiomas.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/entities/voces.dart';
import 'package:teslo_shop/features/books/audioLibro/domain/entities/voz.dart';

class AudioDataSourceImpl extends AudioDataSource {
  final dio = Dio(BaseOptions(
    baseUrl: Environment.apiURL,
  ));

  @override
  Future<List<Idioma>> getIdiomas() async {
    try {
      final response = await dio.get('/idiomas');
      final idiomasResponse = Idiomas.fromJson(response.data);
      return idiomasResponse.idiomas;
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<List<Voz>> getVoces(int id) async {
    try {
      print('Hola3');
      final response = await dio.get('/getVoces/${id}');
      final vocesResponse = Voces.fromJson(response.data);
      return vocesResponse.voces;
    } catch (e) {
      throw Exception();
    }
  }
}
