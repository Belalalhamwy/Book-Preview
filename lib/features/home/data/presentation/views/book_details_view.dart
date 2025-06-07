import 'package:bookly/features/home/data/presentation/views/Wedgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsview extends StatelessWidget {
  const BookDetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsviewbody()),
    );
  }
}
