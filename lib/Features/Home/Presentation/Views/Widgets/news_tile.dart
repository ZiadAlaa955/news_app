import 'package:flutter/material.dart';
import 'package:news_app/Features/Home/Data/Models/news_model.dart';
import 'package:news_app/Core/Widgets/news_tile_item.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/web_view.dart';

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
