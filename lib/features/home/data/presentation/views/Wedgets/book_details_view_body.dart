import 'package:bookly/features/home/data/presentation/view_models/book_model/book_model.dart';
import 'package:bookly/features/home/data/presentation/views/Wedgets/books_details_section.dart';
import 'package:bookly/features/home/data/presentation/views/Wedgets/custom_book_details_appbar.dart';
import 'package:bookly/features/home/data/presentation/views/Wedgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsviewbody extends StatelessWidget {
  const BookDetailsviewbody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                  BookDetailsSection(
                    book: bookModel,
                  ),
                  const Expanded(child: SizedBox(height: 50)),
                  const SimilarBooksSection(),
                  const SizedBox(height: 40),
                ],
              ),
            )),
      ],
    );
  }
}
