import 'package:flutter/material.dart';
import 'package:meals/Data/dummy_data.dart';
import 'package:meals/Widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick Your Category"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(category: category)
        ],
      ),
    );
  }
}
