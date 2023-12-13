import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/logic/provider_handler.dart';
import 'package:capstone_restaurant/pages/home/home.dart';
import 'package:capstone_restaurant/pages/login/onboarding_page.dart';
import 'package:capstone_restaurant/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Splash extends StatefulWidget {
  // final bool isLogin;
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isLogin = false;
  @override
  void initState() {
    super.initState();
    fetchDataAndMenu();
  }

  Future<void> fetchDataAndMenu() async {
    final userProvider = Provider.of<UserDataProvider>(context, listen: false);
    await fetchDataFromSharedPreferences();
    bool result = await userProvider.checkStatus();
    setState(() {
      isLogin = result;
    });
    print(result);
    print(localUserData[2]);
  }

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
      // nextScreen: OnboardingPage(),
      pageTransitionType: PageTransitionType.fade,
      splashTransition: SplashTransition.fadeTransition,
      duration: 2000,
    );
  }
}
