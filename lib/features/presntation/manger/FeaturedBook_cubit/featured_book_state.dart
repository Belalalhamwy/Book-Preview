part of 'featured_book_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBookInitial extends FeaturedBooksState {}

final class FeaturedBookLoading extends FeaturedBooksState {}

final class FeaturedBookFailure extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBookFailure({required this.errMessage});
}

final class FeaturedBookSuccess extends FeaturedBooksState {
  final List<BookModel> book;

  const FeaturedBookSuccess({required this.book});
}
