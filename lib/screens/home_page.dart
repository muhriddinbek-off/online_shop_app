import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFEFEFE),
        elevation: 0,
        leading: Builder(builder: (context) {
          return TextButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: SvgPicture.asset('assets/images/menu.svg'));
        }),
      ),
    );
  }
}
