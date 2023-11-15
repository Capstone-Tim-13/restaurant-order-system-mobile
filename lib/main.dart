import 'package:capstone_restaurant/pages/login/lupa_password_2.dart';
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
        '/': (context) => const ForgetPassword2(),
        '/forgetpassword2': (context) => const ForgetPassword2(),
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

