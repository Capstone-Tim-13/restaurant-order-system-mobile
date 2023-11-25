import 'package:capstone_restaurant/pages/bantuan/rating_page.dart';
import 'package:capstone_restaurant/pages/profile/profile_page.dart';
import 'package:capstone_restaurant/pages/profile/change_password_page.dart';
import 'package:capstone_restaurant/pages/profile/my_account_page.dart';
import 'package:capstone_restaurant/pages/login/forget_password_page.dart';
import 'package:capstone_restaurant/pages/login/login_page.dart';
import 'package:capstone_restaurant/pages/login/onboarding_page.dart';
import 'package:capstone_restaurant/pages/login/register_page.dart';
import 'package:capstone_restaurant/pages/pesanan/searching_page.dart';
import 'package:capstone_restaurant/pages/splash_screen.dart';
import 'package:capstone_restaurant/pages/pesanan/popup_menu.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const ProfilePage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/search': (context) => const SearchPage(),
        '/forgetPassword': (context) => const ForgetPassword(),
        '/popupmenupage': (context) => PopupMenuPage(),
        '/feedbackPage': (context) =>const FeedbackPage(),
      },
    );
  }
}
