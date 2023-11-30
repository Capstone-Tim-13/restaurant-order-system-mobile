import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController emailInput = TextEditingController();
  bool sentAgain = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: showAppBar(), body: sentAgain ? confirmation() : inputEmail());
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
            "Lupa Password",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget inputEmail() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 32),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lupa Password', style: poppins.copyWith(fontSize: 16)),
              Text(
                  'Masukan email kamu, dan kita akan mengirimkan intruksinya reset password',
                  style: poppins.copyWith(fontSize: 12, color: outline)),
              const SizedBox(height: 32),
              Text('Email',
                  style: poppins.copyWith(fontSize: 16, color: outline)),
              userInput(emailInput),
            ],
          ),
          const SizedBox(height: 78),
          GestureDetector(
            onTap: () {
              setState(() {
                sentAgain = true;
              });
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
                  'Reset Password',
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: primary2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget confirmation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 32),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Reset email terkirim',
                  style: poppins.copyWith(fontSize: 16)),
              Text(
                  'Kami telah mengirimkan email instruksi ke balbalee@gmail.com',
                  style: poppins.copyWith(fontSize: 12, color: outline))
            ],
          ),
          const SizedBox(height: 74),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: primary4,
                borderRadius: BorderRadius.circular(37),
              ),
              width: 335,
              height: 48,
              child: Center(
                child: Text(
                  'Kirim lagi',
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: primary2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget userInput(controller) {
    return TextField(
      controller: controller,
      style: poppins.copyWith(fontSize: 16),
    );
  }
}
