import 'package:flutter/material.dart';
import 'package:online_shop_app/screens/Skip.dart';
import 'package:online_shop_app/screens/forgot_password.dart';
import 'package:online_shop_app/screens/get_started.dart';
import 'package:online_shop_app/screens/home_page.dart';
import 'package:online_shop_app/screens/new_password.dart';
import 'package:online_shop_app/screens/sign_up.dart';
import 'package:online_shop_app/screens/start_page.dart';
import 'package:online_shop_app/screens/verification_code.dart';
import 'package:online_shop_app/screens/welcome_page.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
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
        'forget-password': (context) => const ForgetPassword(),
        'verification-code': (context) => const VeriticationCode(),
        'new-password': (context) => const NewPassword(),
        'home-page': (context) => const HomePage(),
      },
    );
  }
}
