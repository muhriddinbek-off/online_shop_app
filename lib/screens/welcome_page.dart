import 'package:flutter/material.dart';
import 'package:online_shop_app/widget/buttons/arrow_back.dart';
import 'package:online_shop_app/widget/buttons/button_topics.dart';
import 'package:online_shop_app/widget/buttons/remember.dart';

import '../widget/text_field/input_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
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
                children: [
                  Column(
                    children: const [
                      Text('Welcome', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
                      Text('Please enter your data to continue', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
                    ],
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              const InputTextField(textLabel: 'Username', iconWidget: Icon(Icons.done, color: Color(0xFF34C358))),
              const InputTextField(textLabel: 'Password', iconWidget: Text('Strong', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xFF34C559)))),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('Forgot password?', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFFEA4335))),
                  SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 35),
              const RememberSwitch(),
              Expanded(child: Container()),
              Column(
                children: [
                  const Text('By connecting your account confirm that you agree', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('with our', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
                      Text('  Term and Condition', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF1D1E20))),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ButtonTopics(title: 'Login', onchange: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
