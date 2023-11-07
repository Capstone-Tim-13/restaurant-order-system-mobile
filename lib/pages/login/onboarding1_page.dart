//  Ali
import 'package:flutter/material.dart';

class SplashScreen1 extends StatefulWidget {
  static const String routeName = '/';
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0AF9F),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
         Image.asset(
          'assets/images/logo.png',
            width: 269.83,
            height: 265,
           ),
         ], 
        ),
      ),
    );
  }
}