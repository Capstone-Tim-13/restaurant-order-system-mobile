// Delia

import 'package:capstone_restaurant/pages/login/login_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _konfirmasiPasswordController =
      TextEditingController();
  bool passwordVisible = true;
  bool retypePasswordVisible = true;
  bool _isNamaValid = false;
  bool _isEmailValid = false;
  bool _isPasswordVisible = false;
  bool _isKonfirmasiPasswordVisible = false;

  @override
  void initState() {
    super.initState();

    _namaController.addListener(() {
      setState(() {
        _isNamaValid = _namaController.text.isNotEmpty;
      });
    });

    _emailController.addListener(() {
      setState(() {
        _isEmailValid = _isValidEmail(_emailController.text);
      });
    });
  }

  bool _isValidEmail(String email) {
    final emailPattern =
        RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailPattern.hasMatch(email);
  }

  @override
  void dispose() {
    _namaController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _konfirmasiPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      // AppBar(
      //   leading: CircleAvatar(
      //     backgroundColor: Colors.white,
      //     child: IconButton(
      //       icon: const Icon(Icons.arrow_back, color: Colors.black),
      //       onPressed: () => Navigator.pop(context),
      //     ),
      //   ),
      //   backgroundColor: Colors.white,
      //   title: const Text('Buat akun',
      //       style: TextStyle(
      //           fontFamily: 'Poppins',
      //           fontSize: 18,
      //           fontWeight: FontWeight.bold)),
      // ),
      body: createAcc(),
      // SingleChildScrollView(
      //   child: Center(
      //     child: Column(
      //       children: [
      //         Align(
      //           alignment: Alignment.topCenter,
      //           child: Image.asset(
      //             'assets/images/altaLogo.png',
      //             width: 105,
      //           ),
      //         ),
      //         const SizedBox(height: 15),
      //         const Padding(
      //           padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      //           child: Align(
      //             alignment: Alignment.topLeft,
      //             child: Text(
      //               'Buat akun dulu yuk!',
      //               style: TextStyle(
      //                   fontFamily: 'Poppins',
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold),
      //             ),
      //           ),
      //         ),
      //         const Padding(
      //           padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      //           child: Align(
      //             alignment: Alignment.topLeft,
      //             child: Text(
      //               'Masukkan nama, email, dan password mu ya',
      //               style: TextStyle(
      //                   fontFamily: 'Poppins',
      //                   fontSize: 15,
      //                   fontWeight: FontWeight.normal,
      //                   color: Color(0xFF783525)),
      //             ),
      //           ),
      //         ),
      //         Padding(
      //           padding:
      //               const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      //           child: TextField(
      //             controller: _namaController,
      //             decoration: InputDecoration(
      //                 labelText: 'Nama',
      //                 suffixIcon: _isNamaValid
      //                     ? const Icon(Icons.check, color: Colors.orange)
      //                     : null,
      //                 labelStyle: TextStyle(
      //                     fontFamily: 'Poppins',
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.normal,
      //                     color: const Color.fromARGB(255, 105, 105, 105))),
      //           ),
      //         ),
      //         Padding(
      //           padding:
      //               const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      //           child: TextField(
      //             controller: _emailController,
      //             decoration: InputDecoration(
      //                 labelText: 'Email',
      //                 suffixIcon: _isEmailValid
      //                     ? const Icon(Icons.check, color: Colors.orange)
      //                     : null,
      //                 labelStyle: TextStyle(
      //                     fontFamily: 'Poppins',
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.normal,
      //                     color: const Color.fromARGB(255, 105, 105, 105))),
      //           ),
      //         ),
      //         Padding(
      //           padding:
      //               const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      //           child: TextField(
      //             controller: _passwordController,
      //             decoration: InputDecoration(
      //               labelText: 'Password',
      //               labelStyle: TextStyle(
      //                   fontFamily: 'Poppins',
      //                   fontSize: 18,
      //                   fontWeight: FontWeight.normal,
      //                   color: const Color.fromARGB(255, 105, 105, 105)),
      //               suffixIcon: IconButton(
      //                 icon: _isPasswordVisible
      //                     ? const Icon(Icons.visibility)
      //                     : const Icon(Icons.visibility_off),
      //                 onPressed: () {
      //                   setState(() {
      //                     _isPasswordVisible = !_isPasswordVisible;
      //                   });
      //                 },
      //               ),
      //             ),
      //             obscureText: !_isPasswordVisible,
      //           ),
      //         ),
      //         Padding(
      //           padding:
      //               const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      //           child: TextField(
      //             controller: _konfirmasiPasswordController,
      //             decoration: InputDecoration(
      //               labelText: 'Konfirmasi Password',
      //               labelStyle: TextStyle(
      //                   fontFamily: 'Poppins',
      //                   fontSize: 18,
      //                   fontWeight: FontWeight.normal,
      //                   color: const Color.fromARGB(255, 105, 105, 105)),
      //               suffixIcon: IconButton(
      //                 icon: _isKonfirmasiPasswordVisible
      //                     ? const Icon(Icons.visibility)
      //                     : const Icon(Icons.visibility_off),
      //                 onPressed: () {
      //                   setState(() {
      //                     _isKonfirmasiPasswordVisible =
      //                         !_isKonfirmasiPasswordVisible;
      //                   });
      //                 },
      //               ),
      //             ),
      //             obscureText: !_isKonfirmasiPasswordVisible,
      //           ),
      //         ),
      //         SizedBox(height: 5),
      //         ElevatedButton(
      //           onPressed: () {},
      //           style: ElevatedButton.styleFrom(
      //             primary: Color(0xFF783525),
      //             minimumSize: Size(400, 50),
      //           ),
      //           child: const Text(
      //             'Masuk',
      //             style: TextStyle(
      //               fontFamily: 'Poppins',
      //               fontWeight: FontWeight.normal,
      //               color: Color.fromARGB(255, 249, 249, 249),
      //               fontSize: 16,
      //             ),
      //           ),
      //         ),
      //         const SizedBox(height: 10),
      //         const Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: <Widget>[
      //             Text(
      //               'Sudah punya akun? ',
      //               style: TextStyle(
      //                 fontFamily: 'Poppins',
      //                 fontSize: 13,
      //                 fontWeight: FontWeight.normal,
      //                 color: Colors.grey,
      //               ),
      //             ),
      //             Text(
      //               'Masuk',
      //               style: TextStyle(
      //                 fontFamily: 'Poppins',
      //                 color: Colors.amber,
      //                 fontSize: 13,
      //               ),
      //             ),
      //           ],
      //         ),
      //         const SizedBox(height: 8),
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: <Widget>[
      //             const Text(
      //               'Dengan Mendaftar, Anda menyetujui ',
      //               style: TextStyle(
      //                   fontFamily: 'Poppins',
      //                   fontSize: 14,
      //                   fontWeight: FontWeight.normal,
      //                   color: const Color.fromARGB(255, 105, 105, 105)),
      //             ),
      //             const Text.rich(
      //               TextSpan(
      //                 text: 'Syarat Ketentuan & Kebijakan Privasi ',
      //                 style: TextStyle(
      //                     fontFamily: 'Poppins',
      //                     color: Colors.green,
      //                     fontSize: 14,
      //                     fontWeight: FontWeight.normal),
      //                 children: <TextSpan>[
      //                   TextSpan(
      //                     text: 'kami',
      //                     style: TextStyle(
      //                         fontFamily: 'Poppins',
      //                         fontSize: 14,
      //                         fontWeight: FontWeight.normal,
      //                         color: const Color.fromARGB(255, 105, 105, 105)),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             const SizedBox(
      //               height: 15,
      //             ),
      //             const Text(
      //               'Atau',
      //               style: TextStyle(
      //                   fontFamily: 'Poppins',
      //                   fontSize: 15,
      //                   fontWeight: FontWeight.normal,
      //                   color: const Color.fromARGB(255, 105, 105, 105)),
      //             ),
      //             SizedBox(height: 10),
      //             ElevatedButton(
      //               onPressed: () {},
      //               style: ElevatedButton.styleFrom(
      //                 backgroundColor: Colors.blue[900],
      //                 minimumSize: const Size(400, 50),
      //               ),
      //               child: const Text(
      //                 'Login dengan facebook',
      //                 style: TextStyle(
      //                     fontFamily: 'Poppins',
      //                     color: Color.fromARGB(255, 249, 249, 249),
      //                     fontSize: 16,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //             SizedBox(
      //               height: 8,
      //             ),
      //             ElevatedButton(
      //               onPressed: () {},
      //               style: ElevatedButton.styleFrom(
      //                 backgroundColor: Colors.blue,
      //                 minimumSize: Size(400, 50),
      //               ),
      //               child: const Text(
      //                 'Login dengan google',
      //                 style: TextStyle(
      //                     fontFamily: 'Poppins',
      //                     color: Color.fromARGB(255, 249, 249, 249),
      //                     fontSize: 16,
      //                     fontWeight: FontWeight.normal),
      //               ),
      //             ),
      //             SizedBox(height: 10)
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
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
                Text('Nama',
                    style: poppins.copyWith(fontSize: 16, color: outline)),
                userInput(_namaController),
                const SizedBox(height: 16),
                Text('Email',
                    style: poppins.copyWith(fontSize: 16, color: outline)),
                userInput(_emailController),
                const SizedBox(height: 16),
                Text('Password',
                    style: poppins.copyWith(fontSize: 16, color: outline)),
                userPasswordInput(_passwordController, 'passwordVisible'),
                const SizedBox(height: 16),
                Text('Konfirmasi Password',
                    style: poppins.copyWith(fontSize: 16, color: outline)),
                userPasswordInput(
                    _konfirmasiPasswordController, 'retypePasswordVisible'),
              ],
            ),
            const SizedBox(height: 32),
            GestureDetector(
              onTap: () {},
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
                        debugPrint('open privacy n policy');
                      },
                  ),
                  TextSpan(
                      text: ' kami.', style: poppins.copyWith(fontSize: 12)),
                ],
              ),
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
      ),
    );
  }

  Widget userInput(controller) {
    return TextField(
      controller: controller,
      style: poppins.copyWith(fontSize: 16),
    );
  }

  Widget userPasswordInput(controller, isVisible) {
    if (isVisible == 'passwordVisible') {
      return TextFormField(
        controller: controller,
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
      );
    } else {
      return TextFormField(
        controller: controller,
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
      );
    }
  }
}
