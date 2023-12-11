import 'package:flutter/material.dart';
import 'package:recipe_application/constants.dart';

class RecentRecipe extends StatelessWidget {
  final String recipeImage;
  final String recipeName;
  final String category;
  final double rating;
  const RecentRecipe(
      {super.key,
      required this.recipeImage,
      required this.recipeName,
      required this.category,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: searcContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      recipeImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        recipeName,
                        style: const TextStyle(
                          fontSize: fontSizeHeading,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        category,
                        style: const TextStyle(
                          fontSize: fontSizeName,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: buttons),
                          Text(
                            '$rating',
                            style: const TextStyle(
                              fontSize: fontSizeName,
                              color: searchText,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Icon(Icons.bookmark_outline, size: 30, color: buttons),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
