import 'package:flutter/material.dart';

class ForgetPassword2 extends StatefulWidget {
  const ForgetPassword2({Key? key}) : super(key: key);

  @override
  State<ForgetPassword2> createState() => _ForgetPassword2State();
}

class _ForgetPassword2State extends State<ForgetPassword2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                // Navigator.pushReplacementNamed(context, '/home');
              },
                child: Image.asset(
                  'assets/images/icon.png',
                  width: 30,
                  height: 30,
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              'Lupa Password',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 20, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reset email terkirim',
              style: TextStyle(
                color: Color(0xFF010F07),
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 3),
            Text(
              'Kami telah mengirimkan email instruksi ke',
              style: TextStyle(
                color: Color(0xFF737373),
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 3),
            Text(
              'balbalee@gmail.com', // ganti dengan memanggil email dari halaman lupa password 1 contoh $Email 
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                color: Color(0xFF737373),
              ),
            ),
            SizedBox(height: 90),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  // logika untuk mengirim ulang email di sini
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF783525),
                  onPrimary: Colors.white,
                  minimumSize: Size(324, 49),
                ),
                child: Text(
                  'Kirim Lagi',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
