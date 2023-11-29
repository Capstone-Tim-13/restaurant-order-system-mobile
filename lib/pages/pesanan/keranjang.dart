import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Keranjang extends StatefulWidget {
  static const String routeName = '/';
  const Keranjang({super.key});

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  bool? check1 = false;

  @override
  Widget build(BuildContext context) {
    // Buat dapatin ukuran tinggi layar device yang dipake
    double screenHeight = MediaQuery.of(context).size.height;

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
          "Konfirmasi pesanan",
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(16, 20, 16, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(17.2, 16, 42, 16),
                      width: double.infinity,
                      height: 123,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0, 1),
                            blurRadius: 2.5,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 1.58, 9.2, 0),
                            width: 16.61,
                            height: 16.25,
                            child: Image.asset(
                              'assets/images/home.png',
                              width: 16.61,
                              height: 16.25,
                            ),
                          ),
                          Container(
                            width: 241,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    ' My home',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      height: 1.5,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3),
                                Container(
                                  child: Text(
                                    'Jl. in aja dulu III, Blok mana lagi 1 E, No. 666, Tanah kusir, Depok, Jawa Barat, 08395, Indoensia',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5,
                                      color: Color(0xdd959595),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
              padding: EdgeInsets.fromLTRB(16, 7, 10, 86),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(2, 0, 0, 16),
                    padding: EdgeInsets.fromLTRB(17.04, 16, 25, 12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(4, 0, 0, 0),
                          width: 17.92,
                          height: 18.75,
                          child: Image.asset(
                            'assets/images/jam.png',
                            width: 17.92,
                            height: 18.75,
                          ),
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Estimasi waktu pengiriman : 30 menit (4 km)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                    padding: EdgeInsets.fromLTRB(11, 33, 13, 36),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xfffcfcfc),
                      borderRadius: BorderRadius.circular(28),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 1),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(8, 0, 7, 27),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 100, 0),
                                child: Text(
                                  'Pesanan mu',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  '+Tambah pesanan',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5,
                                    color: Color(0xffe25e3e),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(2, 0, 0, 2),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 0, 7, 2),
                                width: double.infinity,
                                height: 100,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 400,
                                        height: 150,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 4),
                                              width: double.infinity,
                                              height: 25,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 3, 2),
                                                    child: Text(
                                                      'Kentang Goreng',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.5,
                                                        color:
                                                            Color(0xff010f07),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 1.5, 32, 0.5),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        bottomsheet(context,
                                                            screenHeight);
                                                      },
                                                      style:
                                                          TextButton.styleFrom(
                                                        padding:
                                                            EdgeInsets.zero,
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                6.84, 0, 4, 0),
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(37),
                                                        ),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .fromLTRB(0,
                                                                      0, 9, 0),
                                                              width: 7.63,
                                                              height: 9.48,
                                                              child: Icon(
                                                                Icons.edit,
                                                                size: 14,
                                                                color: Color(
                                                                    0xff783525),
                                                              ),
                                                            ),
                                                            Text(
                                                              'Catatan',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 11,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height:
                                                                    2.1818181818,
                                                                color: Color(
                                                                    0xffe25e3e),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 2, 0, 0),
                                                    child: Text(
                                                      'Rp 34.000',
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 1.5,
                                                        color:
                                                            Color(0xff783525),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 210,
                                      top: 54,
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 2, 0),
                                        width: 89,
                                        height: 24,
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 16, 0),
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0xff886345)),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: TextButton(
                                                onPressed: () {},
                                                style: TextButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '-',
                                                    style: GoogleFonts.inter(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff886345),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 16, 0),
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0xff886345)),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: TextButton(
                                                onPressed: () {},
                                                style: TextButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '+',
                                                    style: GoogleFonts.inter(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff886345),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color(0x19676767),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 125,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 5,
                                      top: 0,
                                      child: Container(
                                        width: 400,
                                        height: 155,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 60, 0),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 3, 0),
                                                    child: Text(
                                                      'Kentang Goreng',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.5,
                                                        color:
                                                            Color(0xff010f07),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 3, 32, 0),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        bottomsheet(context,
                                                            screenHeight);
                                                      },
                                                      style:
                                                          TextButton.styleFrom(
                                                        padding:
                                                            EdgeInsets.zero,
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                6.84, 0, 5, 0),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(37),
                                                        ),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .fromLTRB(0,
                                                                      0, 9, 0),
                                                              width: 7.63,
                                                              height: 9.48,
                                                              child: Icon(
                                                                Icons.edit,
                                                                size: 14,
                                                                color: Color(
                                                                    0xff783525),
                                                              ),
                                                            ),
                                                            Text(
                                                              'Catatan',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 11,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height:
                                                                    2.1818181818,
                                                                color: Color(
                                                                    0xffe25e3e),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0.5, 0, 0),
                                                    child: Text(
                                                      'Rp 16.000',
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 1.5,
                                                        color:
                                                            Color(0xff783525),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 216,
                                      top: 75,
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 2, 0),
                                        width: 100,
                                        height: 24,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 16, 0),
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0xff886345)),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: TextButton(
                                                onPressed: () {},
                                                style: TextButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '-',
                                                    style: GoogleFonts.inter(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff886345),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 16, 0),
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0xff886345)),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: TextButton(
                                                onPressed: () {},
                                                style: TextButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '+',
                                                    style: GoogleFonts.inter(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff886345),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color(0x19676767),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 15, 6, 18),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                                      width: double.infinity,
                                      height: 54,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 6),
                                                  child: Text(
                                                    'Kentang Goreng',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.5,
                                                      color: Color(0xff010f07),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                2, 1.5, 0, 1.5),
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 35, 27),
                                                  child: TextButton(
                                                    onPressed: () {
                                                      bottomsheet(context,
                                                          screenHeight);
                                                    },
                                                    style: TextButton.styleFrom(
                                                      padding: EdgeInsets.zero,
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              6.84, 0, 4, 0),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(37),
                                                      ),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0, 0, 9, 0),
                                                            width: 7.63,
                                                            height: 9.48,
                                                            child: Icon(
                                                              Icons.edit,
                                                              size: 14,
                                                              color: Color(
                                                                  0xff783525),
                                                            ),
                                                          ),
                                                          Text(
                                                            'Catatan',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 11,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height:
                                                                  2.1818181818,
                                                              color: Color(
                                                                  0xffe25e3e),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0.5, 0, 0),
                                                  child: Text(
                                                    'Rp 10.000',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.5,
                                                      color: Color(0xff783525),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(212, 0, 0, 0),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 16, 0),
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xff886345)),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '-',
                                                  style: GoogleFonts.inter(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff886345),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 16, 0),
                                            child: Text(
                                              '1',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                height: 1.5,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xff886345)),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '+',
                                                  style: GoogleFonts.inter(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff886345),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color(0x19676767),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 157,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 119,
                                child: Align(
                                  child: SizedBox(
                                    width: 337,
                                    height: 1,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 2,
                                top: 0,
                                child: Container(
                                  width: 500,
                                  height: 157,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 19),
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 4, 0),
                                              width: double.infinity,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        5, 0, 158, 0),
                                                    child: Text(
                                                      'Subtotal',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.5,
                                                        color:
                                                            Color(0xff010f07),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Rp 60.000',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 2.125,
                                                      color: Color(0xff010f07),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 4, 0),
                                              width: double.infinity,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        5, 0, 193, 0),
                                                    child: Text(
                                                      'Ongkir',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.5,
                                                        color:
                                                            Color(0xff010f07),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '13.000',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 2.125,
                                                      color: Color(0xff010f07),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        5, 0, 152, 0),
                                                    child: Text(
                                                      'Biaya lain-lain',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.5,
                                                        color:
                                                            Color(0xff010f07),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '2.000',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 2.125,
                                                      color: Color(0xff010f07),
                                                    ),
                                                  ),
                                                ],
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
                                      SizedBox(height: 10),
                                      Container(
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  5, 0, 89, 0),
                                              child: Text(
                                                'Total Pembayaran',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5,
                                                  color: Color(0xff010f07),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'RP 75.000',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                height: 1.5,
                                                color: Color(0xff783525),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(13, 23, 17, 23),
                        width: double.infinity,
                        height: 71,
                        decoration: BoxDecoration(
                          color: Color(0xfffcfcfc),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(1, 1),
                              blurRadius: 3,
                            ),
                          ],
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                          width: double.infinity,
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text(
                                  'Metode Pembayaran',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5,
                                    color: Color(0xff010f07),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(125, 0, 0, 0),
                                  width: 20.83,
                                  height: 20.83,
                                  child: Image.asset(
                                    'assets/images/go.png',
                                    width: 20.83,
                                    height: 20.83,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Opsional',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                  color: Color(0xff727272),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Material(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Checkbox(
                                  value: check1,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      check1 = value;
                                    });
                                  },
                                ),
                                Text(
                                  'Self Pick Up / Ambil sendiri',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    height: 2.4,
                                    color: Color(0xff727272),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    width: double.infinity,
                    height: 49,
                    decoration: BoxDecoration(
                      color: Color(0xffc6c6c6),
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
                          'Pesan Sekarang',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: Color(0xff727272),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> bottomsheet(BuildContext context, double screenHeight) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            // ngasih padding kalau ada keyboard dipake
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: GestureDetector(
            onTap: () {
              // tutup keyboard jika menekan diluar container
              FocusScope.of(context).unfocus();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              height: screenHeight / 2,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Catatan Pesanan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Tambahkan catatan pesananmu disini ya, agar kami tahu apa yang kamu perlukan',
                    style: TextStyle(
                      color: Colors.black38,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        minLines: 7,
                        maxLines: null, // Allows for multiline input
                        decoration: InputDecoration.collapsed(
                          hintText: 'Contoh: Banyakin porsinya bang, hehe',
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      fixedSize: Size(screenHeight, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Simpan'),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
