import 'package:flutter/material.dart';
import 'package:online_shop_app/screens/Skip.dart';

import 'drower_page/drawer_body_widget.dart';

class MyDrawerBody extends StatefulWidget {
  const MyDrawerBody({super.key});

  @override
  State<MyDrawerBody> createState() => _MyDrawerBodyState();
}

class _MyDrawerBodyState extends State<MyDrawerBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerBodyWidgets(iconData: Icons.wb_sunny_outlined, title: 'Dark Mode', widget: Switch(value: true, onChanged: (v) {}), onchange: () {}),
        DrawerBodyWidgets(iconData: Icons.info_outline, title: 'Account Information', widget: const Text(''), onchange: () {}),
        DrawerBodyWidgets(iconData: Icons.lock_outline, title: 'Password', widget: const Text(''), onchange: () {}),
        DrawerBodyWidgets(iconData: Icons.shopping_bag_outlined, title: 'Order', widget: const Text(''), onchange: () {}),
        DrawerBodyWidgets(iconData: Icons.credit_card_outlined, title: 'My Cards', widget: const Text(''), onchange: () {}),
        DrawerBodyWidgets(iconData: Icons.favorite_outline, title: 'Wishlist', widget: const Text(''), onchange: () {}),
        DrawerBodyWidgets(iconData: Icons.settings_outlined, title: 'Settings', widget: const Text(''), onchange: () {}),
        const SizedBox(height: 140),
        DrawerBodyWidgets(iconData: Icons.logout_outlined, title: 'Logout', widget: const Text(''), onchange: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SkipPage()))),
      ],
    );
  }
}
