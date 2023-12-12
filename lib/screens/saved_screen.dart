import 'package:flutter/material.dart';
import 'package:recipe_application/constants.dart';
import 'package:recipe_application/screens/navigation_bar.dart';

import 'package:recipe_application/widgets/recent_recipe_tile.dart';
import 'package:recipe_application/widgets/search_container.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              //head widget
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const NavBar(),
                          ),
                        );
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 24,
                    ),
                  ),
                  const Text(
                    'Liked recipes',
                    style: TextStyle(
                      fontSize: fontSizeHeading,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(Icons.bookmark_outline, size: 24),
                ],
              ),

              //search container
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: SearchContainer(),
              ),

              //liked recipes
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            child: SizedBox(
                              height: 90,
                              child: RecentRecipe(
                                recipeImage: 'img/cake.jpg',
                                recipeName: 'Chocolate Cake',
                                category: 'Cake',
                                rating: 4.8,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
