import 'package:capstone_restaurant/logic/provider_handler.dart';
import 'package:capstone_restaurant/pages/home/home.dart';
import 'package:capstone_restaurant/widgets.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> login(context) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isLogin', true);
  Navigator.pushReplacement(context,
      PageTransition(child: Home(setIdx: 0), type: PageTransitionType.fade));
  // Navigator.pushReplacementNamed(context, '/home');
}

userInputCheck(context, email, password) async {
  final userProvider = Provider.of<UserDataProvider>(context, listen: false);
  List data = [email, password];
  bool isLogin = await userProvider.userLogin(data);

  if (isLogin) {
    login(context);
    debugPrint('login berhasil');
  } else {
    summonDialog(context);
    debugPrint('login tidak berhasil');
  }
}
