import 'package:flutter/material.dart';
import 'package:online_shop_app/widget/buttons/arrow_back.dart';
import 'package:online_shop_app/widget/text_field/input_text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 45),
          const ArrowBack(),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Sign Up', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
            ],
          ),
          const InputTextField(textLabel: 'Username', iconWidget: Icon(Icons.done, color: Color(0xFF34C358))),
          const InputTextField(textLabel: 'Username', iconWidget: Text('Strong', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xFF34C559)))),
        ],
      ),
    );
  }
}
