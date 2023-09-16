import 'package:flutter/material.dart';

import '../../navigation_bar/bottom_navigation_bar.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      bottomNavigationBar: const BottomNavigationPanel(),
    );
  }
}
