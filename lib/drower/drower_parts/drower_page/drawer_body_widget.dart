import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerBodyWidgets extends StatelessWidget {
  IconData iconData;
  String title;
  Widget widget;
  Function() onchange;
  DrawerBodyWidgets({
    super.key,
    required this.iconData,
    required this.title,
    required this.widget,
    required this.onchange,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onchange,
      leading: Icon(iconData),
      title: Text(
        title,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20)),
      ),
      trailing: widget,
    );
  }
}
