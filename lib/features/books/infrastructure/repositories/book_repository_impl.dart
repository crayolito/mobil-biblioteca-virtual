import 'package:teslo_shop/features/books/domain/datasources/book_datasource.dart';
import 'package:teslo_shop/features/books/domain/entities/book.dart';
import 'package:teslo_shop/features/books/domain/repositories/book_datasource.dart';
import 'package:teslo_shop/features/books/infrastructure/datasources/book_datasource_impl.dart';

class BookRepositoryImpl extends BookRepository {
  final BooksDatasource booksDatasource;
  BookRepositoryImpl({BooksDatasource? booksDatasource})
      : booksDatasource = booksDatasource ?? BookDatasourceImpl();

  @override
  Future<List<Book>> searchBook(String query) {
    return booksDatasource.searchBook(query);
  }

  @override
  Future<Book> getBookById(String id) {
    return booksDatasource.getBookById(id);
  }

  @override
  Future<List<Book>> getBooks() {
    return booksDatasource.getBooks();
  }
}
