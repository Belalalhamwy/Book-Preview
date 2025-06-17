// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return
        // ClipRRect(
        //   borderRadius: BorderRadius.circular(16),
        //   child: AspectRatio(
        //     aspectRatio: 3 / 4,
        //     child: CachedNetworkImage(
        //       imageUrl: imageUrl,
        //       errorWidget: (context, url, error) => const Icon(Icons.error),
        //       fit: BoxFit.fill,
        //     ),
        //   ),
        // );
        // -----------------------------
        SizedBox(
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
