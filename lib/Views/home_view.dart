import 'package:flutter/material.dart';
import 'package:news_app/Widgets/category_list_view.dart';
import 'package:news_app/Widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            NewsTile(),
            NewsTile(),
            NewsTile(),
          ],
        ),
      ),
    );
  }
}
