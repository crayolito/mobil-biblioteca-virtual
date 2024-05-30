part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class OnSearchValueChanged extends SearchEvent {
  final String value;
  const OnSearchValueChanged(this.value);
}

class OnSearchReset extends SearchEvent {}

class OnAllBooks extends SearchEvent {}
