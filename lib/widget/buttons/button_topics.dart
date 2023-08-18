import 'package:flutter/material.dart';

class ButtonTopics extends StatelessWidget {
  final String title;
  final Function() onchange;
  const ButtonTopics({
    super.key,
    required this.title,
    required this.onchange,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Color(0xFF9775FA)),
          minimumSize: MaterialStatePropertyAll(Size(0, 75)),
        ),
        onPressed: onchange,
        child: Text(
          title,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFFFEFEFE)),
        ));
  }
}
