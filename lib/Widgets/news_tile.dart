import 'package:flutter/material.dart';
import 'package:news_app/Models/news_model.dart';
import 'package:news_app/Widgets/news_tile_item.dart';
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
      child: NewsTileItem(newsTileModel: newsTileModel),
    );
  }
}
