import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Services/news_service.dart';
import 'package:news_app/Views/category_view.dart';
import 'package:news_app/Views/home_view.dart';
import 'package:news_app/news_cubit/news_cubit.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(NewsService()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomeView.id: (context) => const HomeView(),
          CategoryView.id: (context) => const CategoryView(),
        },
        initialRoute: HomeView.id,
      ),
    );
  }
}
