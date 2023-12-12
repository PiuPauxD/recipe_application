import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_switch/flutter_switch.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 60,
      height: 30,
      value: status,
      activeColor: Colors.deepPurple,
      inactiveColor: const Color.fromARGB(255, 242, 255, 167),
      activeToggleColor: Colors.purpleAccent,
      inactiveToggleColor: const Color.fromARGB(255, 223, 223, 23),
      borderRadius: 16,
      onToggle: (val) {
        setState(() {
          status = val;
        });
      },
    );
  }
}
