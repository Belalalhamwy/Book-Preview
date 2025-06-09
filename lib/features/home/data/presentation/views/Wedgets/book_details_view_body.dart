import 'package:bookly/features/home/data/presentation/views/Wedgets/books_details_section.dart';
import 'package:bookly/features/home/data/presentation/views/Wedgets/custom_book_details_appbar.dart';
import 'package:bookly/features/home/data/presentation/views/Wedgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsviewbody extends StatelessWidget {
  const BookDetailsviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BookDetailsSection(),
                  Expanded(child: SizedBox(height: 50)),
                  SimilarBooksSection(),
                  SizedBox(height: 40),
                ],
              ),
            )),
      ],
    );
  }
}
