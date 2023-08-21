import 'package:flutter/material.dart';

class SearchGolosovoy extends StatelessWidget {
  const SearchGolosovoy({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          width: size.height * 0.323,
          decoration: BoxDecoration(
            color: const Color(0xFFF5F6FA),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.search, color: Color(0xFF8F959E), size: 25),
              hintText: 'Search...',
              hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF8F959E)),
            ),
          ),
        ),
        SizedBox(width: size.height * 0.02),
        ElevatedButton(
          style: ButtonStyle(
            minimumSize: const MaterialStatePropertyAll(Size(50, 50)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            backgroundColor: const MaterialStatePropertyAll(Color(0xFF9775FA)),
          ),
          onPressed: () {},
          child: const Icon(
            Icons.mic_none_outlined,
          ),
        ),
      ],
    );
  }
}
