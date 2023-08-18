import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String textLabel;
  final Widget iconWidget;
  const InputTextField({super.key, required this.textLabel, required this.iconWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          labelText: textLabel,
          suffixIcon: iconWidget,
        ),
      ),
    );
  }
}
