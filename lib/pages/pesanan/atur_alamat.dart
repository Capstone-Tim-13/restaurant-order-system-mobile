import 'package:capstone_restaurant/pages/pesanan/tambah_alamat.dart';
import 'package:flutter/material.dart';

class AturAlamat extends StatelessWidget {
  const AturAlamat({super.key});

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
              'Atur alamat pengiriman',
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
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Daftar Alamat',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TambahAlamat()),
                );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.add, 
                        color: Color(0xFFD2691E),
                        size: 18,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Tambah Alamat',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFD2691E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
