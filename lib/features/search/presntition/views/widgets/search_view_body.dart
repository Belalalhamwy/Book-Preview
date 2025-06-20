import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/presentation/views/Wedgets/best_saller_list_view_item.dart';
import 'package:bookly/features/search/presntition/views/widgets/custom_search_text_filed.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16),
          Text(
            "Search Result",
            style: Styles.textStyle18,
          ),
          SizedBox(height: 16),
          Expanded(child: SearchResultListview()),
        ],
      ),
    );
  }
}

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            // child: BookListViewItem(),
            child: Text("data"),
          );
        });
  }
}
