import 'package:flutter/material.dart';
import 'package:news_app/Models/news_model.dart';
import 'package:news_app/Widgets/cached_image.dart';

class NewsTileItem extends StatelessWidget {
  const NewsTileItem({super.key, required this.newsTileModel});

  final NewsModel newsTileModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedImage(newsTileModel: newsTileModel),
        const SizedBox(
          height: 5,
        ),
        Text(
          newsTileModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          newsTileModel.subTitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
