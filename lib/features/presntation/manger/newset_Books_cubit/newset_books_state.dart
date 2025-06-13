part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetBooksLoading extends NewsetBooksState {}

final class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookModel> book;

  const NewsetBooksSuccess({required this.book});
}

final class NewsetBooksFailure extends NewsetBooksState {
  final String errMessage;

  const NewsetBooksFailure({required this.errMessage});
}
