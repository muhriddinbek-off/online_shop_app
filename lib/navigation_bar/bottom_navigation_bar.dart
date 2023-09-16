import 'package:flutter/material.dart';
import 'package:online_shop_app/core/current.dart';

class BottomNavigationPanel extends StatelessWidget {
  const BottomNavigationPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        currentIndex: intexCurrent['current'],
        onTap: (value) {
          intexCurrent['current'] = value;
          Navigator.pushReplacementNamed(context, navigate[value]);
        },
        selectedItemColor: Colors.blueAccent,
        unselectedIconTheme: const IconThemeData(color: Colors.black54),
        iconSize: 29,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card_outlined), label: ''),
        ],
      ),
    );
  }
}
