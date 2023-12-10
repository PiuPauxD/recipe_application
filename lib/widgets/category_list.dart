import 'package:flutter/material.dart';
import 'package:recipe_application/constants.dart';

class CategoryList extends StatelessWidget {
  final String categoryName;
  const CategoryList({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        height: 20,
        width: 70,
        decoration: BoxDecoration(
          color: buttons,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            categoryName,
            style: const TextStyle(
              fontSize: fontSizeName,
              color: activeCategory,
            ),
          ),
        ),
      ),
    );
  }
}
