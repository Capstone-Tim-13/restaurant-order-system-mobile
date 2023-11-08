import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailInput = TextEditingController();
  final TextEditingController passwordInput = TextEditingController();
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login/loginBg.png'),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter)),
          child: Column(
            children: [
              const SizedBox(height: 172),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(56))),
                child: Column(
                  children: [
                    const SizedBox(height: 11),
                    Image.asset('assets/images/login/handle.png'),
                    const SizedBox(height: 27),
                    Image.asset('assets/images/altaLogo.png', width: 105),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Selamat datang!',
                                style: poppins.copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 24)),
                            Text('Yuk, coba berbagai menu kami',
                                style: poppins.copyWith(color: primary4)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Email',
                                style: poppins.copyWith(
                                    fontSize: 16, color: gray)),
                            userInput(emailInput),
                            const SizedBox(height: 16),
                            Text('Password',
                                style: poppins.copyWith(
                                    fontSize: 16, color: gray)),
                            userPasswordInput(passwordInput),
                            const SizedBox(height: 8),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/resetPassword');
                                debugPrint('lupa password tertekan');
                              },
                              child: Text(
                                'Lupa Password?',
                                style:
                                    poppins.copyWith(fontSize: 12, color: gray),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (route) => false);
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
                            'Masuk',
                            style: poppins.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum punya akun?',
                          style: poppins.copyWith(fontSize: 12, color: gray),
                        ),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/createAcc');
                            debugPrint('Buat akun tertekan');
                          },
                          child: Text(
                            'Buat akun baru',
                            style:
                                poppins.copyWith(fontSize: 12, color: orange),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      child: Column(
                        children: [
                          Text(
                            'Atau',
                            style: poppins.copyWith(fontSize: 16),
                          ),
                          const SizedBox(height: 24),
                          loginWithSocial('assets/images/login/facebook.png',
                              'Login dengan Facebook', facebookBlue),
                          const SizedBox(height: 16),
                          loginWithSocial('assets/images/login/google.png',
                              'Login dengan Google', googleBlue),
                          const SizedBox(height: 67),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget userInput(controller) {
    return TextField(
      controller: controller,
      style: poppins.copyWith(fontSize: 16),
    );
  }

  Widget userPasswordInput(controller) {
    return TextFormField(
      controller: controller,
      obscureText: passwordVisible,
      style: poppins.copyWith(fontSize: 16),
      decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(
                passwordVisible ? Icons.visibility : Icons.visibility_off,
                color: gray,
              ),
              onPressed: () {
                setState(() {
                  passwordVisible = !passwordVisible;
                });
              })),
    );
  }
}

Widget loginWithSocial(img, label, bgColor) {
  return GestureDetector(
    onTap: () {
      debugPrint('$label ditekan');
    },
    child: Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(37),
      ),
      width: 335,
      height: 48,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(img),
            Expanded(
              child: Center(
                child: Text(label,
                    style: poppins.copyWith(fontSize: 14, color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
