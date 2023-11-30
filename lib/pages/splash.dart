import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:capstone_restaurant/pages/home/home.dart';
import 'package:capstone_restaurant/pages/login/onboarding_page.dart';
import 'package:capstone_restaurant/pages/order/cart_page.dart';
import 'package:capstone_restaurant/pages/profile/address_page.dart';
// import 'package:capstone_restaurant/pages/order/cart_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  final bool isLogin;
  const Splash({super.key, required this.isLogin});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'assets/images/altaLogo.png',
        width: 300,
      ),
      splashIconSize: double.infinity,
      backgroundColor: primary3,
      nextScreen: isLogin ? const Home(setIdx: 0) : const OnboardingPage(),
      // nextScreen: CartPage(),
      pageTransitionType: PageTransitionType.fade,
      splashTransition: SplashTransition.fadeTransition,
      duration: 2000,
    );
  }
}
