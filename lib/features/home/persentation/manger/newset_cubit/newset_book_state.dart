part of 'newset_book_cubit.dart';

sealed class NewsetBookState extends Equatable {
  const NewsetBookState();

  @override
  List<Object> get props => [];
}

class NewsetBookInitial extends NewsetBookState {}

class NewsetBookLoding extends NewsetBookState {}

class NewsetBookSuccess extends NewsetBookState {
  final List<BookModel> books;

  const NewsetBookSuccess(this.books);
}

class NewsetBookFailuer extends NewsetBookState {
  final String errorMessage;

  const NewsetBookFailuer(this.errorMessage);
}
