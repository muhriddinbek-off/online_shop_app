import 'package:flutter/material.dart';
import 'package:online_shop_app/screens/Skip.dart';
import 'package:online_shop_app/screens/get_started.dart';
import 'package:online_shop_app/screens/sign_up.dart';
import 'package:online_shop_app/screens/start_page.dart';
import 'package:online_shop_app/screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "start-page",
      routes: {
        "start-page": (context) => const StartPage(),
        "skip-page": (context) => const SkipPage(),
        "get-started": (context) => const GetStarted(),
        "sign-up": (context) => const SignUpPage(),
        'welcome-page': (context) => const WelcomePage(),
      },
    );
  }
}
