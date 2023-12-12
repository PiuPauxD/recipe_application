import 'package:flutter/material.dart';
import 'package:recipe_application/constants.dart';

class SettingTile extends StatelessWidget {
  final IconData settingIcon;
  final String settungName;

  const SettingTile({
    super.key,
    required this.settingIcon,
    required this.settungName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: searcContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  settingIcon,
                  color: Colors.black,
                  size: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                ),
                Text(
                  settungName,
                  style: const TextStyle(fontSize: fontSizeName),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
