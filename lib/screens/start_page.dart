import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

double sizeImage = 36;

class _StartPageState extends State<StartPage> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   Future.delayed(const Duration(seconds: 5), () {
  //     Navigator.pushNamed(context, 'skip-page');
  //   });
  //   // sizeImage = 50;
  //   super.initState();
  // }

  void next() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamed(context, 'skip-page');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9775FA),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            height: sizeImage,
            duration: const Duration(seconds: 5),
            child: Center(
                child: InkWell(
                    onTap: () {
                      setState(() {
                        sizeImage = 70;
                        next();
                      });
                    },
                    child: SvgPicture.asset('assets/images/Logo.svg', height: sizeImage))),
          ),
        ],
      ),
    );
  }
}
