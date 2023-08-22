import 'package:flutter/material.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({super.key});

  @override
  Widget build(BuildContext context) {
    List brandLogo = [
      {'logo': 'assets/brandlogo/adidas.png', 'name': 'Adidas'},
      {'logo': 'assets/brandlogo/airjordan.png', 'name': 'Air Jordan'},
      {'logo': 'assets/brandlogo/jumpman.png', 'name': 'Jump Man'},
      {'logo': 'assets/brandlogo/nike.png', 'name': 'Nike'},
      {'logo': 'assets/brandlogo/pingwing.png', 'name': 'Pngwing'},
      {'logo': 'assets/brandlogo/puma.png', 'name': 'Puma'},
    ];
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: brandLogo.length,
      itemBuilder: ((context, index) {
        return Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: const Color(0xFFF5F6FA),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFFEFEFE),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(brandLogo[index]['logo']),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(brandLogo[index]['name'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
              ),
            ],
          ),
        );
      }),
    );
  }
}
