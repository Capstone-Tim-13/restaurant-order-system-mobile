import 'package:capstone_restaurant/pages/pesanan/atur_alamat.dart';
import 'package:flutter/material.dart';

class TambahAlamat extends StatefulWidget {
  const TambahAlamat({super.key});

  @override
  State<TambahAlamat> createState() => _TambahAlamatState();
}

class _TambahAlamatState extends State<TambahAlamat> {
  final TextEditingController _detailLokasi = TextEditingController();
  final TextEditingController _namaLengkap = TextEditingController();
  final TextEditingController _noHandphone = TextEditingController();
  final TextEditingController _tandaiLokasi = TextEditingController();
  bool isAlamatUtama = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AturAlamat()),
                );
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
              'Alamat Baru',
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
      body: Padding(
        padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Lokasi',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            TextField(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13.0,
              ),
              controller: _detailLokasi,
              decoration: InputDecoration(
                hintText: 'Cth. blok,No. rumah, patokan',
                hintStyle: TextStyle(
                  color: Color(0xFFC6C6C6),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Nama Lengkap',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            TextField(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13.0,
              ),
              controller: _namaLengkap,
              decoration: InputDecoration(
                hintText: 'Masukan nama lengkap',
                hintStyle: TextStyle(
                  color: Color(0xFFC6C6C6),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'No. Handphone',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            TextField(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13.0,
              ),
              controller: _noHandphone,
              decoration: InputDecoration(
                hintText: 'Masukan No. Handphone',
                hintStyle: TextStyle(
                  color: Color(0xFFC6C6C6),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Tandai Lokasi Sebagai',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            TextField(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13.0,
              ),
              controller: _tandaiLokasi,
              decoration: InputDecoration(
                hintText: 'Cth, rumah, kantor, kampus',
                hintStyle: TextStyle(
                  color: Color(0xFFC6C6C6),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  'Jadikan alamat utama',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Switch(
                  value: isAlamatUtama,
                  onChanged: (value) {
                    setState(() {
                      isAlamatUtama = value;
                    });
                  },
                  activeTrackColor: Color(0xFF783525),
                  activeColor: Colors.white,
                  inactiveTrackColor: Colors.grey,
                  inactiveThumbColor: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 200),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  // Logika ketika tombol ditekan
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF783525),
                  onPrimary: Colors.white,
                  minimumSize: Size(324, 49),
                ),
                child: Text(
                  'Konfirmasi Alamat',
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
}
