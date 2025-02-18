import 'package:flutter/material.dart';
import 'package:news_app/Features/Home/Data/Models/news_model.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.newsList});

  final List<NewsModel> newsList;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: newsList.length,
        (context, index) {
          return NewsTile(newsTileModel: newsList[index]);
        },
      ),
    );
  }
}
