import 'package:flutter/material.dart';
import 'package:online_shop_app/core/current.dart';
import 'package:online_shop_app/servises/data/api/Provider_api.dart';
import 'package:provider/provider.dart';

class BrandLogo extends StatefulWidget {
  const BrandLogo({super.key});

  @override
  State<BrandLogo> createState() => _BrandLogoState();
}

class _BrandLogoState extends State<BrandLogo> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    final name = brandName;
    return Consumer<ProviderApiServise>(builder: (context, value, child) {
      if (value.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: name.length,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                current = index;
                value.productInfo.removeAt(0);
                value.nameProduct = name[index];
                value.getApiInfo();
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: current == index ? Colors.blue.shade400 : const Color(0xFFF5F6FA),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(name[index], style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: current == index ? Colors.white : const Color(0xFF1D1E20))),
            ),
          );
        }),
      );
    });
  }
}
