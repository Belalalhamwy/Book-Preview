import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/presentation/view_models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBookFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(FeaturedBookSuccess(book: books));
    });
  }
}
