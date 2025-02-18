import 'package:flutter/material.dart';
import 'package:news_app/Core/Utils/assets.dart';
import 'package:news_app/Features/Home/Data/Models/category_card_model.dart';
import 'package:news_app/Features/Home/Presentation/Views/Widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryCardModel> categoryList = const [
    CategoryCardModel(name: 'Business', image: AssetsData.bussinessImage),
    CategoryCardModel(
        name: 'Entertainment', image: AssetsData.entertainmentImage),
    CategoryCardModel(name: 'Science', image: AssetsData.scienceImage),
    CategoryCardModel(name: 'Sports', image: AssetsData.sportsImage),
    CategoryCardModel(name: 'Health', image: AssetsData.healthImage),
    CategoryCardModel(name: 'Technology', image: AssetsData.technologyImage),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryCardModel: categoryList[index],
          );
        },
      ),
    );
  }
}
