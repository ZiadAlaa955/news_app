import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/Core/Utils/app_routes.dart';
import 'package:news_app/Features/Home/Data/Models/category_card_model.dart';
import 'package:news_app/Core/Widgets/build_card.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryCardModel});

  final CategoryCardModel categoryCardModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRoutes.kCategoryView, extra: categoryCardModel.name);
      },
      child: BuildCard(
        categoryCardModel: categoryCardModel,
      ),
    );
  }
}
