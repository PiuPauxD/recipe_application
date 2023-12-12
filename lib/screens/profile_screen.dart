import 'package:flutter/material.dart';
import 'package:recipe_application/buttons/drop_down_button.dart';
import 'package:recipe_application/buttons/icon_button.dart';
import 'package:recipe_application/buttons/switch_button.dart';
import 'package:recipe_application/constants.dart';
import 'package:recipe_application/screens/navigation_bar.dart';
import 'package:recipe_application/widgets/setting_tile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                                builder: (BuildContext context) =>
                                    const NavBar(),
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
                        'My Profile',
                        style: TextStyle(
                          fontSize: fontSizeHeading,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Icon(Icons.person_outline_outlined,
                                size: 28),
                          )),
                    ],
                  ),

                  //picture container
                  Center(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 2.5,
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(125),
                            child: Container(
                              width: 250,
                              height: 250,
                              decoration: BoxDecoration(
                                color: searcContainer,
                                borderRadius: BorderRadius.circular(125),
                              ),
                              child: const Icon(
                                Icons.person_outline_outlined,
                                size: 100,
                              ),
                            ),
                          ),
                          const Text(
                            'Oleg',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //setting tiles
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3,
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          const Stack(
                            children: [
                              SettingTile(
                                settingIcon: Icons.bedtime_outlined,
                                settungName: 'Dark theme',
                              ),
                              Positioned(
                                right: 10,
                                top: 15,
                                child: SwitchButton(),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                          ),
                          const Stack(
                            children: [
                              SettingTile(
                                settingIcon: Icons.language_outlined,
                                settungName: 'Language',
                              ),
                              Positioned(
                                right: 10,
                                top: 15,
                                child: DropDuwnBtn(),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                          ),
                          Stack(
                            children: [
                              const SettingTile(
                                settingIcon: Icons.privacy_tip_outlined,
                                settungName: 'Privacy & Policy',
                              ),
                              Positioned(
                                right: 10,
                                top: 5,
                                child: GestureDetector(
                                    onTap: () {}, child: const IconsButtons()),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                          ),
                          Stack(
                            children: [
                              const SettingTile(
                                settingIcon: Icons.mail_outline_outlined,
                                settungName: 'Contact with me',
                              ),
                              Positioned(
                                right: 10,
                                top: 5,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: const IconsButtons(),
                                ),
                              ),
                            ],
                          ),
                        ],
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
