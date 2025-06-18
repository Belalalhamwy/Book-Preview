import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/presntation/manger/similar_Books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bookly/features/home/data/presentation/views/Wedgets/custom_book_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListview extends StatefulWidget {
  const SimilarBooksListview({super.key});

  @override
  State<SimilarBooksListview> createState() => _SimilarBooksListviewState();
}

class _SimilarBooksListviewState extends State<SimilarBooksListview> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    imageUrl:
                        "https://tse2.mm.bing.net/th?id=OIP.QexcnKLol8SaCraOMz2o6AHaFo&pid=Api&P=0&h=220",
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
