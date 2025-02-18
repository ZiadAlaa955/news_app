import 'package:flutter/material.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/category_list_view.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/home_app_bar_title.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const HomeAppBarTitle(),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  CategoryListView(),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            NewsListViewBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}
