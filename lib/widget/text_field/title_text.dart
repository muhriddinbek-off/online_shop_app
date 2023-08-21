import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title1;
  final String title2;
  const TitleText({super.key, required this.title1, required this.title2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title1, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
        Text(title2, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
      ],
    );
  }
}
