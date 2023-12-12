import 'package:flutter/material.dart';

class IconsButtons extends StatefulWidget {
  const IconsButtons({super.key});

  @override
  State<IconsButtons> createState() => _IconsButtonsState();
}

class _IconsButtonsState extends State<IconsButtons> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 50,
      height: 50,
      child: Icon(
        Icons.arrow_forward_ios_outlined,
        size: 20,
      ),
    );
  }
}
