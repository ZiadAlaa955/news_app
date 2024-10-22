import 'package:flutter/material.dart';
import 'package:news_app/Models/category_card_model.dart';
import 'package:news_app/Widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryCardModel> categoryList = const [
    CategoryCardModel(name: 'Business', image: 'assets/business.avif'),
    CategoryCardModel(name: 'Entertainment', image: 'assets/entertaiment.avif'),
    CategoryCardModel(name: 'Science', image: 'assets/science.avif'),
    CategoryCardModel(name: 'Sports', image: 'assets/sports.avif'),
    CategoryCardModel(name: 'Health', image: 'assets/health.avif'),
    CategoryCardModel(name: 'Technology', image: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryCard(categoryCardModel: categoryList[index]);
        },
      ),
    );
  }
}
