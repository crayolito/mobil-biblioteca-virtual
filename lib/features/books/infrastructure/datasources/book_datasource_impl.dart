import 'package:teslo_shop/features/books/domain/datasources/book_datasource.dart';
import 'package:teslo_shop/features/books/domain/entities/book.dart';
import 'package:teslo_shop/features/books/infrastructure/mappers/book_mapper.dart';
import 'package:teslo_shop/data/jsonBookAudio.dart';

class BookDatasourceImpl extends BooksDatasource {
//   late final Dio dio;
//   final String accessToken;

//   BookDatasourceImpl({required this.accessToken}): dio = Dio(
//     BaseOptions(
//        baseUrl: Environment.apiUrl,
  // 'Authorization' : 'Bearer $accessToken'
//     )
//   )

  @override
  Future<List<Book>> searchBook(String query) async {
    // final response = await dio.get<List>('/api/products?');
    // final response = jsonEncode(jsonLibros);
    final List<Book> books = [];
    for (final book in jsonLibros ?? []) {
      books.add(BookMapper.jsonToEntity(book));
    }

    final List<Book> selectBooks =
        books.where((book) => book.tituloLibro.contains(query)).toList();

    return selectBooks;
  }

  @override
  Future<List<Book>> getBooks() async {
    final List<Book> books = [];
    for (final book in jsonLibros ?? []) {
      books.add(BookMapper.jsonToEntity(book));
    }
    return books;
  }

  @override
  Future<Book> getBookById(String id) {
    throw UnimplementedError();
  }
}
