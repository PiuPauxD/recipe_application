import 'package:flutter/material.dart';
import 'package:recipe_application/screens/navigation_bar.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My Recipes',
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    ),
  );
}
