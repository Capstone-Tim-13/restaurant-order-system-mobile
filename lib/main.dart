
import 'package:capstone_restaurant/pages/login/register_page.dart';
import 'package:capstone_restaurant/pages/login/onboarding4_page.dart';
import 'package:capstone_restaurant/pages/login/onboarding1_page.dart';
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
        '/': (context) => const RegisterPage(),
        '/onboarding4': (context) => const SplashScreen4(),
        '/splashscreen': (context) => const SplashScreen1(),
        // '/login': (context) => const MyHomePage(),
        // '/home': (context) => const MyHomePage(),
        // '/pesanan': (context) => const MyHomePage(),
        // '/bantuan': (context) => const MyHomePage(),
        // '/profil': (context) => const MyHomePage(),
        // '/notifikasi': (context) => const MyHomePage(),
        // '/akun': (context) => const MyHomePage(),
      },
    );
  }
}
