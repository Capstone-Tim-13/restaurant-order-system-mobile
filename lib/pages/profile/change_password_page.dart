import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController currentPassword = TextEditingController();
  final TextEditingController newPassword = TextEditingController();
  bool oldPasswordVisible = true;
  bool newPasswordVisible = true;
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
                confirmDialog(context);
                debugPrint('Ubah Password tertekan');
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

  Widget currentPasswordInput() {
    return TextFormField(
      controller: currentPassword,
      obscureText: oldPasswordVisible,
      style: poppins.copyWith(fontSize: 16),
      decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(
                oldPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: outline,
              ),
              onPressed: () {
                setState(() {
                  oldPasswordVisible = !oldPasswordVisible;
                });
              })),
    );
  }

  Widget newPasswordInput() {
    return TextFormField(
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

  void confirmDialog(context) {
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
                    'Yeay, password berhasil diubah',
                    style: poppins.copyWith(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Kata sandi kamu telah diperbaharui.',
                    style: poppins.copyWith(color: outline, fontSize: 12),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      debugPrint('Ubah Password tertekan');
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
