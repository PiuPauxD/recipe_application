import 'package:flutter/material.dart';
import 'package:recipe_application/constants.dart';
import 'package:recipe_application/widgets/category_list.dart';
import 'package:recipe_application/widgets/category_tile.dart';
import 'package:recipe_application/widgets/recent_recipe_tile.dart';
import 'package:recipe_application/widgets/search_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: <Widget>[
                  //head widgets
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Oleg!',
                            style: TextStyle(
                              fontSize: fontSizeHeading,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'What food you want to cook?',
                              style: TextStyle(
                                fontSize: fontSizeName,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 47,
                        height: 47,
                        decoration: BoxDecoration(
                          color: avatarColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Icon(
                          Icons.person_2_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ],
                  ),

                  //search container
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SearchContainer(),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: buttons,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.filter_list_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //categories
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 40,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(right: 10, top: 10),
                        itemBuilder: (BuildContext context, int index) {
                          return const CategoryList(categoryName: 'Cake');
                        },
                      ),
                    ),
                  ),

                  //categories recipes
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SizedBox(
                      height: 160,
                      width: 140,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return const CategoryTile(
                            foodImage: 'img/cake.jpg',
                            foodName: 'Chocolate cake',
                            rating: '4.9',
                          );
                        },
                      ),
                    ),
                  ),

                  //Recent recipes
                  const Padding(
                    padding: EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      'Recent recipes',
                      style: TextStyle(
                        fontSize: fontSizeHeading,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      width: 140,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return const RecentRecipe(
                            recipeImage: 'img/coctail.jpeg',
                            recipeName: 'Red Coctail',
                            category: 'Drinks',
                            rating: 4.8,
                          );
                        },
                      ),
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
