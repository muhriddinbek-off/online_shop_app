import 'package:flutter/material.dart';
import 'package:online_shop_app/drower/drower_parts/drower_body.dart';

import '../drower_header.dart';

class MyDrower extends StatefulWidget {
  const MyDrower({super.key});

  @override
  State<MyDrower> createState() => _MyDrowerState();
}

class _MyDrowerState extends State<MyDrower> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 0,
      child: Column(
        children: const [
          DrawerHeaderView(),
          Expanded(child: MyDrawerBody()),
        ],
      ),
    );
  }
}
