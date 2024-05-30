// import 'dart:convert';

// import 'package:teslo_shop/features/books/domain/entities/book.dart';


// List<Book> bookFromJson(String str) =>
//     List<Book>.from(json.decode(str).map((x) => Book.fromJson(x)));

// String bookToJson(List<Book> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));



//   // CONVIERTE A UN OBJETO BOOK
//   factory Book.fromJson(Map<String, dynamic> json) => Book(
//         id: json["id"],
//         tipoLibro: json["tipo_libro"],
//         descripcion: json["descripcion"],
//         autor: json["autor"],
//         url: json["url"],
//       );

//   // CONVIERTE A UN JSON
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "tipo_libro": tipoLibro,
//         "descripcion": descripcion,
//         "autor": autor,
//         "url": url,
//       };

