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
        automaticallyImplyLeading: false,
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
                fontSize: 18,
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
          Column(
  children: [
    Container(
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/ Home 4.png',
                width: 19, 
                height: 19, 
              ),
              SizedBox(width: 8),
              Text(
                'My Home',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Spacer(),
    Icon(
      Icons.more_vert,
      color: Colors.black,
      size: 24,
    ),
            ],
          ),
          SizedBox(height: 8),
          Text(
                'Balbalee - 0839874456984',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
          SizedBox(height: 8),
          Text(
                'Pager pelangi sebelah pager item ya pak.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
          SizedBox(height: 8),
          Text(
                'Jl. in aja dulu III, Blok mana lagi 1 E, No. 666, Tanah kusir, Depok, Jawa Barat, 08395, Indoensia.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
        ],
      ),
    ),
  ],
),

        ],
      ),
    );
  }
}
