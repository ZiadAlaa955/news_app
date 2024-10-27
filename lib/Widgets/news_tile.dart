import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/news_model.dart';
import 'package:news_app/Widgets/cached_image.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.newsTileModel});
  final NewsModel newsTileModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        cachedImage(newsTileModel: newsTileModel),
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
          height: 5,
        ),
        Text(
          newsTileModel.subTitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.grey,
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
