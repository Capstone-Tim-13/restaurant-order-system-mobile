// Ali

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:capstone_restaurant/pages/login/onboarding_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'assets/images/altaLogo.png',
        width: 300,
      ),
      splashIconSize: double.infinity,
      backgroundColor: primary3,
      nextScreen: const OnboardingPage(),
      pageTransitionType: PageTransitionType.fade,
      splashTransition: SplashTransition.fadeTransition,
      duration: 2000,
    );
  }
}
