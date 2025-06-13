import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/presentation/view_models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit() : super(FeaturedBookInitial());
}
