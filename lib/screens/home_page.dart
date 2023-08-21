import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/widget/search/search.dart';
import 'package:online_shop_app/widget/text_field/title_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFEFEFE),
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10, top: 10),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: const Color(0xFFF5F6FA),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(Icons.work_outline_rounded, color: Color(0xFF1D1E20)),
          )
        ],
        leading: Builder(builder: (context) {
          return TextButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: Container(padding: const EdgeInsets.all(9), height: 45, width: 45, decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: const Color(0xFFF5F6FA)), child: SvgPicture.asset('assets/images/menu.svg')));
        }),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Hello', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
                Text('Welcome to Laza.', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
              ],
            ),
            const SizedBox(height: 20),
            const SearchGolosovoy(),
            const SizedBox(height: 23),
            const TitleText(title1: 'Choose Brand', title2: 'View All'),
          ],
        ),
      ),
    );
  }
}
