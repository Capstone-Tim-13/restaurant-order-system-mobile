import 'package:capstone_restaurant/logic/login/register_logic.dart';
import 'package:capstone_restaurant/pages/login/privacy_policy_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameInput = TextEditingController();
  final TextEditingController emailInput = TextEditingController();
  final TextEditingController passwordInput = TextEditingController();
  final TextEditingController retypePasswordInput = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passFocusNode = FocusNode();
  final FocusNode pass2FocusNode = FocusNode();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool passwordVisible = true;
  bool retypePasswordVisible = true;

  @override
  void dispose() {
    nameInput.dispose();
    emailInput.dispose();
    passwordInput.dispose();
    retypePasswordInput.dispose();
    emailFocusNode.dispose();
    passFocusNode.dispose();
    pass2FocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      body: createAcc(),
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
            "Buat akun",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget createAcc() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/altaLogo.png',
              width: 105,
            ),
            const SizedBox(height: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Buat akun dulu yuk!',
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 24),
                ),
                Text(
                  'Masukan nama, email, dan password mu ya',
                  style: poppins.copyWith(fontSize: 14, color: primary4),
                ),
                const SizedBox(height: 24),
                userInputData(),
              ],
            ),
            const SizedBox(height: 32),
            GestureDetector(
              onTap: () {
                if (formKey.currentState?.validate() == true) {
                  passwordCheck(context, nameInput.text, emailInput.text,
                      passwordInput.text, retypePasswordInput.text);
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: primary4,
                  borderRadius: BorderRadius.circular(37),
                ),
                width: 335,
                height: 49,
                child: Center(
                  child: Text(
                    'Masuk',
                    style: poppins.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: primary2),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya akun?',
                  style: poppins.copyWith(fontSize: 12, color: outline),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    debugPrint('Buat akun tertekan');
                  },
                  child: Text(
                    'masuk',
                    style: poppins.copyWith(fontSize: 12, color: orange),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Dengan Mendaftar, Anda menyetujui Syarat',
                style: poppins.copyWith(fontSize: 12),
                children: <TextSpan>[
                  TextSpan(
                    text: '\nKetentuan & Kebijakan Privasi',
                    style: poppins.copyWith(color: Colors.green, fontSize: 12),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: const PrivacyPolicy(),
                                type: PageTransitionType.fade));
                        debugPrint('open privacy n policy');
                      },
                  ),
                  TextSpan(
                      text: ' kami.', style: poppins.copyWith(fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget userInputData() {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nama', style: poppins.copyWith(fontSize: 16, color: outline)),
          TextFormField(
            controller: nameInput,
            onEditingComplete: () {
              FocusScope.of(context).requestFocus(emailFocusNode);
            },
            textInputAction: TextInputAction.next,
            style: poppins.copyWith(fontSize: 16),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Username harus terisi';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          Text('Email', style: poppins.copyWith(fontSize: 16, color: outline)),
          TextFormField(
            controller: emailInput,
            focusNode: emailFocusNode,
            onEditingComplete: () {
              FocusScope.of(context).requestFocus(passFocusNode);
            },
            textInputAction: TextInputAction.next,
            style: poppins.copyWith(fontSize: 16),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email harus terisi';
              }
              if (value.contains('@gmail.com') ||
                  value.contains('@yahoo.com') ||
                  value.contains('@icloud.com')) {
                return null; // Email valid
              } else {
                return 'Email tidak valid';
              }
            },
          ),
          const SizedBox(height: 16),
          Text('Password',
              style: poppins.copyWith(fontSize: 16, color: outline)),
          TextFormField(
            focusNode: passFocusNode,
            onEditingComplete: () {
              FocusScope.of(context).requestFocus(pass2FocusNode);
            },
            textInputAction: TextInputAction.next,
            controller: passwordInput,
            obscureText: passwordVisible, // Perubahan di sini
            style: poppins.copyWith(fontSize: 16),
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    icon: Icon(
                      passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off, // Perubahan di sini
                      color: outline,
                    ),
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible; // Perubahan di sini
                      });
                    })),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password harus terisi';
              }
              if (value.length < 8) {
                return 'Password harus mengandung panjang minimal 8 karakter';
              }
              RegExp regex =
                  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

              if (!regex.hasMatch(value)) {
                return 'Password harus mengandung:\n1 huruf besar\n1 huruf kecil\n1 digit angka';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          Text('Konfirmasi Password',
              style: poppins.copyWith(fontSize: 16, color: outline)),
          TextFormField(
            focusNode: pass2FocusNode,
            onEditingComplete: () {
              if (formKey.currentState?.validate() == true) {
                passwordCheck(context, nameInput.text, emailInput.text,
                    passwordInput.text, retypePasswordInput.text);
              }
            },
            textInputAction: TextInputAction.send,
            controller: retypePasswordInput,
            obscureText: retypePasswordVisible, // Perubahan di sini
            style: poppins.copyWith(fontSize: 16),
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    icon: Icon(
                      retypePasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off, // Perubahan di sini
                      color: outline,
                    ),
                    onPressed: () {
                      setState(() {
                        retypePasswordVisible =
                            !retypePasswordVisible; // Perubahan di sini
                      });
                    })),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password harus terisi';
              }
              if (value.length < 8) {
                return 'Password harus mengandung panjang minimal 8 karakter';
              }
              RegExp regex =
                  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

              if (!regex.hasMatch(value)) {
                return 'Password harus mengandung:\n1 huruf besar\n1 huruf kecil\n1 digit angka';
              }
              return null;
            },
          )
        ],
      ),
    );
  }
}
