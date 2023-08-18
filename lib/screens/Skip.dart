import 'package:flutter/material.dart';

import '../widget/skip_container.dart';

class SkipPage extends StatelessWidget {
  const SkipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9775FA),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/person.png'),
            ],
          ),
          const Positioned(
            left: 25,
            right: 25,
            bottom: 25,
            child: SkipContainer(),
          ),
        ],
      ),
    );
  }
}
