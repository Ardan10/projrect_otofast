import 'dart:async';

import 'package:flutter/material.dart';
import 'package:otofast/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    //
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const OnBoardingPage(),
      //   ),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Container(
          height: 175,
          width: 175,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/logo2.png'))),
        ),
      ),
    );
  }
}
