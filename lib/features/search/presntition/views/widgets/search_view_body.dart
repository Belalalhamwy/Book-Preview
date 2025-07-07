import 'package:bookly/features/search/presntition/views/widgets/custom_search_text_filed.dart';
import 'package:bookly/features/search/presntition/views/widgets/search_books_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SizedBox(height: 60),
          CustomSearchTextField(),
          SearchBooksListView(),
        ],
      ),
    );
  }
}
