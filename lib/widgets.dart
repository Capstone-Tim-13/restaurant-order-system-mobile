import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

summonDialog(context, {customTitle, customSubtitle}) {
  return showDialog(
      context: context,
      builder: ((context) => AlertDialog(
            title: Text(customTitle ?? 'Login Gagal',
                style: poppins.copyWith(fontSize: 20)),
            content: SizedBox(
              width: 220,
              height: 37,
              child: Text(
                  customSubtitle ??
                      'Silahkan cek kembali email dan Password anda.',
                  style: poppins.copyWith(fontSize: 14)),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'OK',
                  style: poppins.copyWith(fontSize: 14),
                ),
              )
            ],
          )));
}

Widget fieldMaker(title, hint, controller, {prefilled}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 17),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: poppins.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 2),
        TextField(
          controller: controller,
          onTap: () {
            if (prefilled != null) {
              controller.text = prefilled;
            }
          },
          decoration: InputDecoration(
              hintText: hint, hintStyle: poppins.copyWith(color: outline)),
        )
      ],
    ),
  );
}

String formatDate(data) {
  DateTime dateTime = DateTime.parse(data);
  String formattedDate = DateFormat.yMMMMd().format(dateTime);
  return formattedDate;
}

Future<void> fetchDataFromSharedPreferences() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  localUserData = prefs.getStringList('userData') ?? [];
  // debugPrint('Data dari SharedPreferences: $localUserData');
}

urlLauncher(String request) async {
  final Uri parseURL = Uri.parse(request);
  if (!await launchUrl(parseURL)) {
    throw Exception('Could not launch $parseURL');
  }
}

addToMenuFav(id){
  
}
