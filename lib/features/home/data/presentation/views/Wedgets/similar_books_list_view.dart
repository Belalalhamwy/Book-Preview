import 'package:flutter/material.dart';
import 'package:bookly/features/home/data/presentation/views/Wedgets/custom_book_item.dart';

class SimilarBooksListview extends StatefulWidget {
  const SimilarBooksListview({super.key});

  @override
  State<SimilarBooksListview> createState() => _SimilarBooksListviewState();
}

class _SimilarBooksListviewState extends State<SimilarBooksListview> {
  @override
  Widget build(BuildContext context) {
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
  }
}
