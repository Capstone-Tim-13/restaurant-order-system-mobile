import 'package:flutter/material.dart';

class SplashScreen4 extends StatefulWidget {
  const SplashScreen4({super.key});

  @override
  State<SplashScreen4> createState() => _SplashScreen4State();
}

class _SplashScreen4State extends State<SplashScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 94,
              child: Container(
                width: 299,
                height: 299,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFffbc80),
                ),
              ),
            ),
            Positioned(
              top: 102,
              child: Image.asset(
                'assets/images/3D Food Icon by @Odafe_UI.png',
                width: 368,
                height: 368,
              ),
            ),
            Positioned(
              top: 534,
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'All your favorites',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 11),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Pesan dari restoran lokal terbaik',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF868686),
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            'dengan pengiriman mudah dan sesuai',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF868686),
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            'permintaan',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF868686),
                              fontFamily: 'Poppins',
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
              top: 678,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fiber_manual_record,
                    size: 10,
                    color: Color(0xFF868686), 
                  ),
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
                ],
              ),
            ),
            Positioned(
              top: 733, 
              child: ElevatedButton(
                onPressed: () {
                  // Tindakan yang diambil saat tombol ditekan
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF783525),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  fixedSize: Size(335.0, 75.0),
                ),
                child: Text(
                  'Selanjutnya',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 3),
            // Text(
            //       'Lewati',
            //       style: TextStyle(
            //         fontSize: 16,
            //         color: Colors.black,
            //       ),
            //     ),
          ],
        ),
      ),
    );
  }
}
