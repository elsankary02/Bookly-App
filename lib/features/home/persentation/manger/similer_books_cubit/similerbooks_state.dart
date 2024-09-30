part of 'similer_books_cubit.dart';

sealed class SimilerbooksState extends Equatable {
  const SimilerbooksState();

  @override
  List<Object> get props => [];
}

final class SimilerbooksInitial extends SimilerbooksState {}

final class SimilerbooksFailuer extends SimilerbooksState {
  final String errormassege;

  const SimilerbooksFailuer(this.errormassege);
}

final class SimilerbooksSuccess extends SimilerbooksState {
  final List<BookModel> books;

  const SimilerbooksSuccess(this.books);
}

final class SimilerbooksLoading extends SimilerbooksState {}
