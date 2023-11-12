// Alwin

import 'package:flutter/material.dart';

class SplashScreen3 extends StatelessWidget {
  static String routeName = '/';
  const SplashScreen3({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 5.46,
                child: Image.asset(
                  'assets/images/Path.png',
                  width: 324.08,
                  height: 274.44,
                ),
              ),
              Positioned(
                top: 12,
                child: Image.asset(
                  'assets/images/group.png',
                  width: 239.39,
                  height: 235.37,
                ),
              ),
              Positioned(
                child: Image.asset(
                  'assets/images/telur.png',
                  width: 393,
                  height: 394,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 17,
          ),
          Positioned(
            top: 526,
            child: Text(
              'Welcome',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Center(
            child: Positioned(
              top: 580,
              child: Text(
                'Senang berkenalan dengan kamu. Kami senang kamu ada disini, jadi ayo kita mulai!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Positioned(
            top: 678,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.fiber_manual_record,
                  size: 10,
                  color: Color(0xFF783525),
                ),
                Icon(
                  Icons.fiber_manual_record,
                  size: 10,
                  color: Color(0xFF868686),
                ),
                Icon(
                  Icons.fiber_manual_record,
                  size: 10,
                  color: Color(0xFF868686),
                ),
                Icon(
                  Icons.fiber_manual_record,
                  size: 10,
                  color: Color(0xFF868686),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 49,
          ),
          Positioned(
            top: 721,
            child: ElevatedButton(
              onPressed: () {
                // Aksi yang ingin dilakukan ketika tombol "Selanjutnya" ditekan
              },
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF783525), minimumSize: Size(335, 48)),
              child: Text(
                'Selanjutnya',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(width: 10),
          TextButton(
            onPressed: () {
              // Aksi yang ingin dilakukan ketika tombol "Lewati" ditekan
            },
            child: Text(
              'Lewati',
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
