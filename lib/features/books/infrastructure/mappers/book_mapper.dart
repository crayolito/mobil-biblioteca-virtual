import 'package:teslo_shop/features/books/domain/entities/book.dart';

class BookMapper {
  // ESTA FUNCION CREA UN PRODUCTO
  static Book jsonToEntity(Map<String, dynamic> json) => Book(
      id: json['id'],
      tipoLibro: json['tipo_libro'].toString(),
      descripcion: json['descripcion'],
      autor: json['autor'],
      url: json['url'],
      tituloLibro: json['titulo_libro']);
}
