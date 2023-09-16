import 'package:flutter/material.dart';

import '../../navigation_bar/bottom_navigation_bar.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      bottomNavigationBar: const BottomNavigationPanel(),
    );
  }
}
