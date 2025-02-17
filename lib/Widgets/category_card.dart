import 'package:flutter/material.dart';
import 'package:news_app/Models/category_card_model.dart';
import 'package:news_app/Views/category_view.dart';
import 'package:news_app/Widgets/build_card.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryCardModel});

  final CategoryCardModel categoryCardModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          CategoryView.id,
          arguments: categoryCardModel.name,
        );
      },
      child: BuildCard(
        categoryCardModel: categoryCardModel,
      ),
    );
  }
}
