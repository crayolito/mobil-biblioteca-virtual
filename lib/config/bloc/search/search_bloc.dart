import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:teslo_shop/features/books/domain/entities/book.dart';
import 'package:teslo_shop/features/books/infrastructure/repositories/book_repository_impl.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final bookRepositoryImpl = BookRepositoryImpl();

  SearchBloc() : super(const SearchState()) {
    on<SearchEvent>((event, emit) {});
    on<OnAllBooks>(_onAllBooks);
    on<OnSearchValueChanged>(_onSearchValueChanged);
    on<OnSearchReset>(_onSearchReset);
  }

  void _onAllBooks(OnAllBooks event, Emitter<SearchState> emit) async {
    final List<Book> books = await bookRepositoryImpl.getBooks();
    emit(state.copyWith(books: books));
  }

  void _onSearchValueChanged(
      OnSearchValueChanged event, Emitter<SearchState> emit) async {
    emit(state.copyWith(searchValue: '', books: []));

    final List<Book> books = await bookRepositoryImpl.searchBook(event.value);
    emit(state.copyWith(searchValue: event.value, books: books));
  }

  void _onSearchReset(OnSearchReset event, Emitter<SearchState> emit) {
    emit(state.copyWith(searchValue: '', books: []));
  }
}
