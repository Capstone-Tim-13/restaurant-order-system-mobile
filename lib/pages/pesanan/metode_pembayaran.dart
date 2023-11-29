// Rachel

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MetodePembayaran extends StatefulWidget {
  @override
  State<MetodePembayaran> createState() => _MetodePembayaranState();
}

class _MetodePembayaranState extends State<MetodePembayaran> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff783525),
          ),
          onPressed: () {},
        ),
        backgroundColor: Color(0xffffffff),
        title: Text(
          "Metode Pembayaran",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            height: 1.5,
            color: Color(0xff000000),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(15, 20, 165, 0),
              child: Text(
                'Pilih metode pembayaran',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: Color(0xff000000),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 285, 0),
              child: Text(
                'E-Wallet',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  height: 1.5,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 24, 2),
                    child: Radio(
                      value: 1,
                      groupValue: selectedValue,
                      activeColor: Color(0xff783525),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = 1;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 16, 0),
                    width: 83,
                    height: 17,
                    child: Image.asset(
                      'assets/images/gopay.png',
                    ),
                  ),
                  Text(
                    'Gopay',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xffc6c6c6),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 24, 2),
                    child: Radio(
                      value: 2,
                      groupValue: selectedValue,
                      activeColor: Color(0xff783525),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = 2;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 16, 0),
                    width: 83,
                    height: 17,
                    child: Image.asset(
                      'assets/images/dana.png',
                    ),
                  ),
                  Text(
                    'Dana',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xffc6c6c6),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 24, 2),
                    child: Radio(
                      value: 3,
                      groupValue: selectedValue,
                      activeColor: Color(0xff783525),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = 3;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 16, 0),
                    width: 83,
                    height: 17,
                    child: Image.asset(
                      'assets/images/ovo.png',
                    ),
                  ),
                  Text(
                    'Ovo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xffc6c6c6),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 24, 2),
                    child: Radio(
                      value: 4,
                      groupValue: selectedValue,
                      activeColor: Color(0xff783525),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = 4;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 16, 0),
                    width: 83,
                    height: 17,
                    child: Image.asset(
                      'assets/images/shopeepay.png',
                    ),
                  ),
                  Text(
                    'Shopee Pay',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xffc6c6c6),
              ),
            ),
            Container(
              height: 20,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 230, 230, 230),
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 310, 0),
              child: Text(
                'Bank',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  height: 1.5,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 24, 2),
                    child: Radio(
                      value: 5,
                      groupValue: selectedValue,
                      activeColor: Color(0xff783525),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = 5;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 16, 0),
                    width: 83,
                    height: 17,
                    child: Image.asset(
                      'assets/images/bca.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'BCA Virtual Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xffc6c6c6),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 24, 2),
                    child: Radio(
                      value: 6,
                      groupValue: selectedValue,
                      activeColor: Color(0xff783525),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = 6;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 16, 0),
                    width: 83,
                    height: 17,
                    child: Image.asset(
                      'assets/images/permata.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'Permata Bank',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xffc6c6c6),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 24, 2),
                    child: Radio(
                      value: 7,
                      groupValue: selectedValue,
                      activeColor: Color(0xff783525),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = 7;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 16, 0),
                    width: 83,
                    height: 17,
                    child: Image.asset(
                      'assets/images/bri.png',
                    ),
                  ),
                  Text(
                    'BRI',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xffc6c6c6),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 24, 2),
                    child: Radio(
                      value: 8,
                      groupValue: selectedValue,
                      activeColor: Color(0xff783525),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = 8;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 16, 0),
                    width: 83,
                    height: 17,
                    child: Image.asset(
                      'assets/images/mandiri.png',
                    ),
                  ),
                  Text(
                    'Bank Mandiri',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xffc6c6c6),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 24, 2),
                    child: Radio(
                      value: 9,
                      groupValue: selectedValue,
                      activeColor: Color(0xff783525),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = 9;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 16, 0),
                    width: 83,
                    height: 17,
                    child: Image.asset(
                      'assets/images/niaga.png',
                    ),
                  ),
                  Text(
                    'Cimb Niaga',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xffc6c6c6),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 24, 2),
                    child: Radio(
                      value: 10,
                      groupValue: selectedValue,
                      activeColor: Color(0xff783525),
                      onChanged: (value) {
                        setState(() {
                          selectedValue = 10;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2, 16, 0),
                    width: 83,
                    height: 17,
                    child: Image.asset(
                      'assets/images/btn.png',
                    ),
                  ),
                  Text(
                    'Bank BTN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xffc6c6c6),
              ),
            ),
            Container(
              height: 20,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 230, 230, 230),
              ),
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 324,
                  height: 49,
                  decoration: BoxDecoration(
                    color: Color(0xff783525),
                    borderRadius: BorderRadius.circular(60),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(1, 1),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Center(
                      child: Text(
                        'Konfirmasi Pembayaran',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          height: 1.5,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
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
