import 'package:flutter/material.dart';
import 'package:news_app/Models/news_tile_model.dart';
import 'package:news_app/Widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});
  final List<NewsTileModel> newsList = const [
    NewsTileModel(
      image:
          'https://images.unsplash.com/photo-1444653614773-995cb1ef9efa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fG5ld3N8ZW58MHx8MHx8fDA%3D',
      title:
          'Comprehensive News Coverage: Understanding the Stories Shaping Our World',
      subTitle:
          'We go beyond the headlines to bring you insightful coverage of the biggest events, explaining their significance and how they are likely to influence current affairs and your life.',
    ),
    NewsTileModel(
      image:
          'https://plus.unsplash.com/premium_photo-1688561383440-feef3fee567d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fG5ld3N8ZW58MHx8MHx8fDA%3D',
      title: 'Breaking News and Detailed Reports on Global and Local Events',
      subTitle:
          'Stay connected with the latest stories, updates, and trends affecting the world today, from key political shifts to cultural moments and everything in between.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        return NewsTile(newsTileModel: newsList[index]);
      },
    );
  }
}
