import 'package:flutter/material.dart';
import 'package:recipe_application/constants.dart';

class DropDuwnBtn extends StatefulWidget {
  const DropDuwnBtn({super.key});

  @override
  State<DropDuwnBtn> createState() => _DropDuwnBtnState();
}

class _DropDuwnBtnState extends State<DropDuwnBtn> {
  String? selectedLanguage;
  final List<String> languages = [
    'eng',
    'rus',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 30,
      child: DropdownButton<String>(
        value: selectedLanguage,
        onChanged: ((value) {
          setState(() {
            selectedLanguage = value!;
          });
        }),
        items: languages
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Text(
                          e,
                          style: const TextStyle(fontSize: fontSizeName),
                        )
                      ],
                    ),
                  ),
                ))
            .toList(),
        selectedItemBuilder: (BuildContext context) => languages
            .map((e) => Row(
                  children: [Text(e)],
                ))
            .toList(),
        hint: Text(
          languages.first,
          style: const TextStyle(color: searchText),
        ),
        dropdownColor: searcContainer,
        isExpanded: true,
        underline: Container(),
      ),
    );
  }
}
