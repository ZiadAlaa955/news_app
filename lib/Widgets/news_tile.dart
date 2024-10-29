import 'package:flutter/material.dart';
import 'package:news_app/Models/news_model.dart';
import 'package:news_app/Widgets/cached_image.dart';
import 'package:news_app/Widgets/web_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.newsTileModel});
  final NewsModel newsTileModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return WebView(newsModel: newsTileModel);
            },
          ),
        );
      },
      child: Column(
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
      ),
    );
  }
}
