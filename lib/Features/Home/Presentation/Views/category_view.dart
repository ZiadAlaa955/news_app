import 'package:flutter/material.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/category_app_bar_title.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});

  final String categoryName;
  @override
  Widget build(BuildContext context) {
    // String categoryName = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: CategoryAppBarTitle(categoryName: categoryName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(category: categoryName),
          ],
        ),
      ),
    );
  }
}
