import 'package:capstone_restaurant/pages/login/forget_password_page.dart';
import 'package:capstone_restaurant/pages/login/login_page.dart';
import 'package:capstone_restaurant/pages/login/onboarding_page.dart';
import 'package:capstone_restaurant/pages/login/register_page.dart';
import 'package:capstone_restaurant/pages/pesanan/pesanan_page.dart';
import 'package:capstone_restaurant/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/orderpage',
      routes: {
        // '/': (context) => const Splash(),
        // '/onboarding': (context) => const OnboardingPage(),
        // '/login': (context) => const LoginPage(),
        // '/register': (context) => const RegisterPage(),
        // '/forgetPassword': (context) => const ForgetPassword(),
        '/orderpage': (context) => const OrderPage(),
      },
    );
  }
}

