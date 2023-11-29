import 'package:flutter/material.dart';

class UbahPassword extends StatefulWidget {
  const UbahPassword({Key? key}) : super(key: key);

  @override
  _UbahPasswordState createState() => _UbahPasswordState();
}

class _UbahPasswordState extends State<UbahPassword> {
  final TextEditingController _sandiSaatIni = TextEditingController();
  final TextEditingController _sandiBaru = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  'assets/images/ Left Circle 1.png',
                  width: 30,
                  height: 30,
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              'Ubah Password',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kata sandi saat ini',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            TextField(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.0,
              ),
              controller: _sandiSaatIni,
              obscureText: _isObscure,
              decoration: InputDecoration(
                hintText: 'Masukkan kata sandi saat ini',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Kata sandi baru',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            TextField(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.0,
              ),
              controller: _sandiBaru,
              obscureText: _isObscure,
              decoration: InputDecoration(
                hintText: 'Masukkan kata sandi baru',
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Harus menyertakan minimum 8 karakter, 1 huruf besar,',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Color(0xFF737373),
              ),
            ),
            Text(
              'besar, 1 huruf kecil dan 1 digit.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Color(0xFF737373),
              ),
            ),
            SizedBox(height: 130),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  _showAlertDialog(context, 'Kata sandi kamu telah diperbaharui.',);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF783525),
                  onPrimary: Colors.white,
                  minimumSize: Size(324, 49),
                ),
                child: Text(
                  'Ubah Password',
                  style: TextStyle(
                    fontSize: 16,
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

 void _showAlertDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 10),
        title: Center(
          child: Text(
            'Yeay, password berhasil diubah',
                      style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      color: Colors.black
                    ),
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(message,
              style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    color: Color(0xFF737373),
                  ),
              ),
            ),
            
            SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF783525),
                  onPrimary: Colors.white,
                  minimumSize: Size(170, 40),
                ),
                child: Text(
                  'oke',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(height: 16,)
          ],
        ),
      );
    },
  );
}




}
