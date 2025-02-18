import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Core/Utils/app_routes.dart';
import 'package:news_app/Core/Utils/news_service.dart';
import 'package:news_app/Features/Home/Presentation/Views/category_view.dart';
import 'package:news_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:news_app/Features/Home/Presentation/Manager/news_cubit/news_cubit.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(NewsService()),
      child: MaterialApp.router(
        routerConfig: AppRoutes.routetr,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
