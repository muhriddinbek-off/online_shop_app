import 'package:flutter/material.dart';
import 'package:online_shop_app/widget/buttons/arrow_back.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/box_container.dart';

class VeriticationCode extends StatelessWidget {
  const VeriticationCode({super.key});

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
                children: const [
                  Text('Verification Code', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Color(0xFF1D1E20))),
                ],
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/password.svg'),
                ],
              ),
              const SizedBox(height: 60),
              Row(
                children: const [
                  BoxContainer(),
                  BoxContainer(),
                  BoxContainer(),
                  BoxContainer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
