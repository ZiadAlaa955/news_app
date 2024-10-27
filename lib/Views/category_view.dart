import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});
  static String id = 'categoryView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'Bussiness',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'News',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
