import 'package:flutter/material.dart';
import 'package:online_shop_app/widget/buttons/arrow_back.dart';
import 'package:online_shop_app/widget/buttons/button_topics.dart';

import '../widget/text_field/input_text.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 45),
              const ArrowBack(),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('New Password', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.18),
              const InputTextField(textLabel: 'Password', iconWidget: Icon(Icons.done, color: Color(0xFFFEFEFE))),
              const InputTextField(textLabel: 'Confirm Password', iconWidget: Icon(Icons.done, color: Color(0xFFFEFEFE))),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Please write your new password.', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
                ],
              ),
              const SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ButtonTopics(
                      title: 'Reset Password',
                      onchange: () {
                        Navigator.pushNamed(context, 'home-page');
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
