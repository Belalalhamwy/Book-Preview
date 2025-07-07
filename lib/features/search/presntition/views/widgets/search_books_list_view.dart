import 'package:bookly/core/utils/Assets.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/presntation/manger/search_Books_cubit/search_books_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBooksListView extends StatelessWidget {
  const SearchBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
        builder: (context, state) {
      if (state is SearchBooksLoading) {
        return const SizedBox(height: 500, child: CustomLoadingIndicator());
      } else if (state is SearchBooksSuccess) {
        return SizedBox(
          height: 750,
          child: ListView.builder(
            itemCount: state.book.length,
            itemBuilder: (context, index) {
              final book = state.book[index];
              final info = book.volumeInfo;
              final title = info.title ?? 'no title';
              final thumbnailll = info.imageLinks!.thumbnail;

              return ListTile(
                // ignore: unnecessary_null_comparison
                leading: thumbnailll != null
                    ? CachedNetworkImage(
                        imageUrl: thumbnailll, width: 50, height: 50)
                    : Image.asset(AssetData.BookImage, width: 50, height: 50),
                title: Text(title),
              );
            },
          ),
        );
      } else if (state is SearchBooksFailure) {
        return SizedBox(
            height: 500, child: Center(child: Text(state.errMessage)));
      } else {
        return const Center(child: Text(''));
      }
    });
  }
}
