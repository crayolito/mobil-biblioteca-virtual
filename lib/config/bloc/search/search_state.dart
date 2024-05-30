part of 'search_bloc.dart';

class SearchState extends Equatable {
  final String searchValue;
  final List<Book> books;

  const SearchState({this.searchValue = '', books}) : books = books ?? const [];

  SearchState copyWith({String? searchValue, List<Book>? books}) => SearchState(
      searchValue: searchValue ?? this.searchValue, books: books ?? this.books);

  @override
  List<Object?> get props => [searchValue, books];
}
