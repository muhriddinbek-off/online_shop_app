import 'package:flutter/material.dart';
import 'package:online_shop_app/screens/verification_code.dart';
import 'package:online_shop_app/screens/welcome_page.dart';
import 'package:online_shop_app/widget/buttons/arrow_back.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/widget/buttons/button_topics.dart';
import 'package:page_transition/page_transition.dart';

import '../widget/text_field/input_text.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                  child: const WelcomePage(),
                  type: PageTransitionType.rightToLeft,
                  duration: const Duration(milliseconds: 600),
                )),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Forgot Password', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
                ],
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/password.svg'),
                ],
              ),
              const SizedBox(height: 80),
              const InputTextField(textLabel: 'Email Address', iconWidget: Icon(Icons.done, color: Color(0xFFFEFEFE))),
              Expanded(child: Container()),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Text('Please write your email to receive a confirmation code to set a new password.', textAlign: TextAlign.center, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF8F959E))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ButtonTopics(
                      title: 'Confirm Mail',
                      onchange: () {
                        Navigator.of(context).push(PageTransition(
                          child: const VeriticationCode(),
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
