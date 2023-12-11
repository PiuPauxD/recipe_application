import 'package:flutter/material.dart';
import 'package:recipe_application/constants.dart';

class CategoryTile extends StatelessWidget {
  final String foodImage;
  final String foodName;
  final String rating;

  const CategoryTile(
      {super.key,
      required this.foodImage,
      required this.foodName,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: 140,
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: searcContainer,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SizedBox(
                width: 140,
                height: 80,
                child: Image.asset(
                  foodImage,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  foodName,
                  style: const TextStyle(fontSize: fontSizeName),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  const Icon(Icons.star, color: buttons),
                  Text(
                    rating,
                    style: const TextStyle(
                      fontSize: fontSizeName,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                  ),
                  const Text(
                    'Cake',
                    style: TextStyle(
                      fontSize: fontSizeName,
                    ),
                  ),
                  Positioned(
                    right: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark, color: buttons),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
