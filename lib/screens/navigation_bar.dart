import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:recipe_application/constants.dart';
import 'package:recipe_application/screens/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List screen = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  int currentIndex = 1;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      extendBody: true,
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: buttons,
        unSelectedColor: Colors.black,
        strokeColor: buttons,
        items: [
          CustomNavigationBarItem(
            icon: const Icon(Icons.bookmark_outline_outlined),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.person_outline_outlined),
          ),
        ],
        currentIndex: currentIndex,
        onTap: onTap,
      ),
    );
  }
}
