import 'package:capstone_restaurant/logic/provider_handler.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../widgets.dart';

passwordCheck(context, username, email, password1, passowrd2) {
  bool isSame = password1 == passowrd2;
  if (isSame) {
    registerMe(context, username, email, password1);
    debugPrint('continue');
  } else {
    summonDialog(context,
        customTitle: 'Password tidak sama',
        customSubtitle: 'Pastikan password yang anda masukkan sama.');
  }
}

registerMe(context, username, email, password) async {
  final userProvider = Provider.of<UserDataProvider>(context, listen: false);
  List data = [username, email, password];
  bool isRegister = await userProvider.userRegister(data);

  if (isRegister) {
    // login();
    summonDialog(context,
        customTitle: 'Register berhasil',
        customSubtitle: 'Silahkan login dengan email dan password anda.');
    debugPrint('register berhasil');
    Navigator.pop(context);
  } else {
    summonDialog(context);
    debugPrint('register tidak berhasil');
  }
}
