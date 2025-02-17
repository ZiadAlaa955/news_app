import 'package:flutter/material.dart';
import 'package:news_app/Models/category_card_model.dart';

class BuildCard extends StatelessWidget {
  const BuildCard({super.key, required this.categoryCardModel});

  final CategoryCardModel categoryCardModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        height: 100,
        width: 180,
        decoration: cardBoxDecoration(),
        child: cardTitle(),
      ),
    );
  }

  Center cardTitle() {
    return Center(
      child: Text(
        categoryCardModel.name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  BoxDecoration cardBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      image: DecorationImage(
        image: AssetImage(categoryCardModel.image),
        fit: BoxFit.fill,
      ),
    );
  }
}
