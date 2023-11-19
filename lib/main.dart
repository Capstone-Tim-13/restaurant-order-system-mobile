import 'package:capstone_restaurant/pages/profil/Ubah_password.dart';
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
        '/': (context) => const UbahPassword(),
        // '/login': (context) => const MyHomePage(),
        // '/home': (context) => const MyHomePage(),
        // '/pesanan': (context) => const MyHomePage(),
        // '/bantuan': (context) => const MyHomePage(),
        '/profil': (context) => const UbahPassword(),
        // '/notifikasi': (context) => const MyHomePage(),
        // '/akun': (context) => const MyHomePage(),
      },
    );
  }
}
