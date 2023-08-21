import 'package:flutter/material.dart';

class ArrowBack extends StatelessWidget {
  final Function() ontap;
  const ArrowBack({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 45,
      width: 45,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: const Color(0xFFF5F6FA)),
      child: IconButton(onPressed: ontap, icon: const Icon(Icons.arrow_back)),
    );
  }
}
