import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/books_action.dart';
import 'package:bookly/features/home/data/presentation/views/Wedgets/book_rating.dart';
import 'package:bookly/features/home/data/presentation/views/Wedgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
            imageUrl:
                "https://tse2.mm.bing.net/th?id=OIP.QexcnKLol8SaCraOMz2o6AHaFo&pid=Api&P=0&h=220",
          ),
        ),
        const SizedBox(height: 43),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(height: 18),
        const BookRating(
          rating: 5,
          count: 200,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 40),
        const BooksAction(),
      ],
    );
  }
}
