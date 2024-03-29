import 'package:flutter/material.dart';
import 'package:online_shop_app/screens/Skip.dart';
import 'package:online_shop_app/screens/sign_up.dart';
import 'package:online_shop_app/widget/buttons/arrow_back.dart';
import 'package:page_transition/page_transition.dart';
import '../widget/buttons/button_topics.dart';
import '../widget/buttons/text_witget.dart';
import '../widget/sacial_network.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 45),
          ArrowBack(
            ontap: () => Navigator.of(context).push(PageTransition(
              child: const SkipPage(),
              type: PageTransitionType.rightToLeft,
              childCurrent: widget,
              duration: const Duration(milliseconds: 600),
            )),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Let’s Get Started', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.19),
          const SacialNetwork(title: 'Facebook', img: 'assets/logo/Facebook.svg', containerColor: Color(0xFF4267B2)),
          const SacialNetwork(title: 'Twitter', img: 'assets/logo/Twitter.svg', containerColor: Color(0xFF1DA1F2)),
          const SacialNetwork(title: 'Google', img: 'assets/logo/Google.svg', containerColor: Color(0xFFEA4335)),
          Expanded(child: Container()),
          const TextOnchange(),
          const SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ButtonTopics(
                  title: 'Create an Account',
                  onchange: () {
                    Navigator.of(context).push(PageTransition(
                      child: const SignUpPage(),
                      type: PageTransitionType.bottomToTop,
                      childCurrent: widget,
                      duration: const Duration(milliseconds: 800),
                    ));
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
