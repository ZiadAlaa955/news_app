import 'package:flutter/material.dart';
import 'package:news_app/Widgets/category_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: const CategoryCard(),
    );
  }
}
