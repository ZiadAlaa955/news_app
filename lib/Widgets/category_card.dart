import 'package:flutter/material.dart';
import 'package:news_app/Models/category_card_model.dart';
import 'package:news_app/Views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryCardModel});
  final CategoryCardModel categoryCardModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CategoryView.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          height: 100,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(categoryCardModel.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              categoryCardModel.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
