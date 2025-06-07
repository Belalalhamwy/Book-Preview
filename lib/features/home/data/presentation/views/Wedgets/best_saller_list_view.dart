import 'package:bookly/features/home/data/presentation/views/Wedgets/best_saller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BestSallerListViewItem());
        });
  }
}
