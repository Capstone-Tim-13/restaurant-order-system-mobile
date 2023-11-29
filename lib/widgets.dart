import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

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

Widget fieldMaker(title, hint, controller) {
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
          decoration: InputDecoration(
              hintText: hint, hintStyle: poppins.copyWith(color: outline)),
        )
      ],
    ),
  );
}
