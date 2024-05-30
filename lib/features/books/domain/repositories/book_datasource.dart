import 'package:teslo_shop/features/books/domain/entities/book.dart';

abstract class BookRepository {
  Future<List<Book>> searchBook(String query);
  Future<List<Book>> getBooks();
  Future<Book> getBookById(String id);
}
