import 'package:capstone_restaurant/logic/provider_handler.dart';
import 'package:capstone_restaurant/pages/home/favorite_page.dart';
import 'package:capstone_restaurant/pages/home/home.dart';
import 'package:capstone_restaurant/pages/home/notification_page.dart';
import 'package:capstone_restaurant/pages/login/forget_password_page.dart';
import 'package:capstone_restaurant/pages/login/register_page.dart';
import 'package:capstone_restaurant/pages/login/login_page.dart';
import 'package:capstone_restaurant/pages/login/onboarding_page.dart';
import 'package:capstone_restaurant/pages/profile/profile_page.dart';
import 'package:capstone_restaurant/pages/splash.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserDataProvider()),
    ChangeNotifierProvider(create: (_) => MenuDataProvider()),
    ChangeNotifierProvider(create: (_) => ChatbotProvider()),
    ChangeNotifierProvider(create: (_) => OrderDataProvider()),
    ChangeNotifierProvider(create: (_) => PaymentDataProvider()),
    ChangeNotifierProvider(create: (_) => FavoritesMenuProvider()),
    ChangeNotifierProvider(create: (_) => CartHandler()),
    ChangeNotifierProvider(create: (_) => BannerProvider()),
    ChangeNotifierProvider(create: (_) => AddressProvider()),
    ChangeNotifierProvider(create: (_) => OrderStatusDemoProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  // final bool isLogin;
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary4),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/onboarding': (context) => const OnboardingPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/resetPassword': (context) => const ResetPassword(),
        '/home': (context) => const Home(setIdx: 0),
        '/favPage': (context) => const FavoriteMenu(),
        '/notifikasi': (context) => const NotificationPage(),
        '/account': (context) => const ProfilePage(),
      },
    );
  }
}
