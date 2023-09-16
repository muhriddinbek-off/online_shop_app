import 'package:flutter/material.dart';

import '../../navigation_bar/bottom_navigation_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      bottomNavigationBar: const BottomNavigationPanel(),
    );
  }
}
