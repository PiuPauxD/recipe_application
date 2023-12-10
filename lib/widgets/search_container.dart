import 'package:flutter/material.dart';
import 'package:recipe_application/constants.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 250,
      decoration: BoxDecoration(
        color: searcContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(
                Icons.search_outlined,
                color: searchText,
              ),
              hintText: 'Search Recipes',
              hintStyle: TextStyle(
                fontSize: fontSizeName,
                color: searchText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
