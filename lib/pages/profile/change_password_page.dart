import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/logic/provider_handler.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController currentPassword = TextEditingController();
  final TextEditingController newPassword = TextEditingController();
  final FocusNode newPasswordFocusNode = FocusNode();
  bool currentPasswordVisible = true;
  bool newPasswordVisible = true;

  @override
  void dispose() {
    currentPassword.dispose();
    newPassword.dispose();
    newPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      body: changePasswordPage(),
    );
  }

  showAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/images/icons/backButton.png'),
          ),
          const SizedBox(width: 8),
          Text(
            "Ubah Password",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget changePasswordPage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 33),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kata sandi saat ini',
            style: poppins.copyWith(fontSize: 16),
          ),
          currentPasswordInput(),
          const SizedBox(height: 8),
          Text(
            'Kata sandi baru',
            style: poppins.copyWith(fontSize: 16),
          ),
          newPasswordInput(),
          const SizedBox(height: 8),
          Text(
            'Harus menyertakan minimum 8 karakter, 1 huruf besar, 1 huruf kecil dan 1 digit.',
            style: poppins.copyWith(fontSize: 12, color: outline),
          ),
          const SizedBox(height: 130),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                if (currentPassword.text.isNotEmpty &&
                    newPassword.text.isNotEmpty) {
                  applyNewPassword();
                } else {
                  confirmDialog('Oops, gagal mengubah password',
                      'Silahkan coba lagi.', false);
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: primary4,
                  borderRadius: BorderRadius.circular(37),
                ),
                width: 335,
                height: 48,
                child: Center(
                  child: Text(
                    'Ubah Password',
                    style: poppins.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: primary2),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> applyNewPassword() async {
    List data = [localUserData[1], currentPassword.text];
    final userProvider = Provider.of<UserDataProvider>(context, listen: false);
    bool accepted = await userProvider.userLogin(data);
    if (accepted) {
      bool changeSuccess = await userProvider.updatePassword(newPassword.text);
      if (changeSuccess) {
        confirmDialog('Yeay, password berhasil diubah',
            'Kata sandi kamu telah diperbaharui.', changeSuccess);
      } else {
        confirmDialog('Oops, gagal mengubah password', 'Silahkan coba lagi.',
            changeSuccess);
      }
    } else {
      confirmDialog(
          'Oops, gagal mengubah password', 'Silahkan coba lagi.', false);
    }
  }

  Widget currentPasswordInput() {
    return TextFormField(
      onEditingComplete: () {
        FocusScope.of(context).requestFocus(newPasswordFocusNode);
      },
      textInputAction: TextInputAction.next,
      controller: currentPassword,
      obscureText: currentPasswordVisible,
      style: poppins.copyWith(fontSize: 16),
      decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(
                currentPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: outline,
              ),
              onPressed: () {
                setState(() {
                  currentPasswordVisible = !currentPasswordVisible;
                });
              })),
    );
  }

  Widget newPasswordInput() {
    return TextFormField(
      focusNode: newPasswordFocusNode,
      onEditingComplete: () {
        if (currentPassword.text.isNotEmpty) {
          RegExp regex = RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$',
          );

          if (newPassword.text.isNotEmpty && regex.hasMatch(newPassword.text)) {
            applyNewPassword();
          } else {
            confirmDialog('Oops, gagal mengubah password',
                'Pastikan password baru sesuai kriteria.', false);
          }
        } else {
          // Handle case when currentPassword is empty
          print('currentPassword is empty');
        }
      },
      textInputAction: TextInputAction.send,
      controller: newPassword,
      obscureText: newPasswordVisible,
      style: poppins.copyWith(fontSize: 16),
      decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(
                newPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: outline,
              ),
              onPressed: () {
                setState(() {
                  newPasswordVisible = !newPasswordVisible;
                });
              })),
    );
  }

  void confirmDialog(title, subtitle, success) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              height: 160,
              child: Column(
                children: [
                  Text(
                    title,
                    style: poppins.copyWith(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    subtitle,
                    style: poppins.copyWith(color: outline, fontSize: 12),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      if (success) {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        debugPrint('Ubah Password berhasil');
                      } else {
                        Navigator.pop(context);
                        debugPrint('Ubah Password gagal');
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: primary4,
                        borderRadius: BorderRadius.circular(37),
                      ),
                      width: 335,
                      height: 48,
                      child: Center(
                        child: Text(
                          'Oke',
                          style: poppins.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: primary2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
