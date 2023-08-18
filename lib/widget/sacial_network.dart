import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SacialNetwork extends StatelessWidget {
  final String title;
  final Color containerColor;
  final String img;
  const SacialNetwork({
    super.key,
    required this.title,
    required this.containerColor,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        height: 50,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(img),
            const SizedBox(width: 10),
            Text(title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white)),
          ],
        ));
  }
}
