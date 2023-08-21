import 'package:flutter/material.dart';
import 'package:online_shop_app/screens/get_started.dart';
import 'package:online_shop_app/screens/welcome_page.dart';
import 'package:online_shop_app/widget/buttons/arrow_back.dart';
import 'package:online_shop_app/widget/buttons/remember.dart';
import 'package:online_shop_app/widget/text_field/input_text.dart';
import 'package:page_transition/page_transition.dart';

import '../widget/buttons/button_topics.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              ArrowBack(
                ontap: () => Navigator.of(context).push(PageTransition(
                  child: const GetStarted(),
                  type: PageTransitionType.rightToLeft,
                  duration: const Duration(milliseconds: 600),
                )),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Sign Up', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              const InputTextField(textLabel: 'Username', iconWidget: Icon(Icons.done, color: Color(0xFF34C358))),
              const InputTextField(textLabel: 'Password', iconWidget: Text('Strong', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Color(0xFF34C559)))),
              const InputTextField(textLabel: 'Email Address', iconWidget: Icon(Icons.done, color: Color(0xFF34C358))),
              const SizedBox(height: 40),
              const RememberSwitch(),
              Expanded(child: Container()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ButtonTopics(
                      title: 'Sign Up',
                      onchange: () {
                        Navigator.of(context).push(PageTransition(
                          child: const WelcomePage(),
                          type: PageTransitionType.bottomToTop,
                          childCurrent: this,
                          duration: const Duration(milliseconds: 800),
                        ));
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
