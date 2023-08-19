import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  const BoxContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.013),
      width: 77,
      height: 98,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE7E8EA), width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const TextField(
        autocorrect: false,
        maxLength: 1,
        textAlign: TextAlign.center,
        decoration: InputDecoration(counter: Offstage(), border: InputBorder.none),
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
      ),
    );
  }
}
