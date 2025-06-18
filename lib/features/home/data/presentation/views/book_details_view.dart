import 'package:bookly/features/home/data/presentation/view_models/book_model/book_model.dart';
import 'package:bookly/features/home/data/presentation/views/Wedgets/book_details_view_body.dart';
import 'package:bookly/features/presntation/manger/similar_Books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsview extends StatefulWidget {
  const BookDetailsview({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsview> createState() => _BookDetailsviewState();
}

class _BookDetailsviewState extends State<BookDetailsview> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailsviewbody()),
    );
  }
}
