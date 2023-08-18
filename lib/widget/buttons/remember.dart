import 'package:flutter/material.dart';

class RememberSwitch extends StatelessWidget {
  const RememberSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Remember me', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
          Switch(
            activeTrackColor: Color(0xFF34C759),
            activeColor: Colors.white,
            value: true,
            onChanged: (v) {},
          ),
        ],
      ),
    );
  }
}
