import 'package:flutter/material.dart';
import 'package:news_app/Services/get_news.dart';
import 'package:news_app/Views/home_view.dart';

void main() {
  GetNews().getTopHeadlines();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => const HomeView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
