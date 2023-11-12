// Katarina
import 'package:flutter/material.dart';

class Splashscreen5 extends StatefulWidget {
  static const String routeName = '/Splashscreen5';
  const Splashscreen5({super.key});

  @override
  State<Splashscreen5> createState() => _Splashscreen5State();
}

class _Splashscreen5State extends State<Splashscreen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/splashscreen5.png',
                  width: 310,
                  height: 310,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 19),
                      child: Text(
                        'Delivery offers',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Font Awesome 5 Brands',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          height: 1.2666666667,
                          letterSpacing: 0.3199999928,
                          color: Color(0xff010f07),
                        ),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 300,
                      ),
                      child: Text(
                        'Memberikan penawaran untuk dikirim ke tujuan mu masing-masing, sangat menghemat waktumu.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Yu Gothic UI',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          color: Color(0xff868686),
                          letterSpacing: 0.4,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.circle, color: Colors.grey, size: 7),
                        SizedBox(width: 2),
                        Icon(Icons.circle, color: Colors.grey, size: 7),
                        SizedBox(width: 2),
                        Icon(Icons.circle, color: Color(0xff783525), size: 7),
                        SizedBox(width: 2),
                        Icon(Icons.circle, color: Colors.grey, size: 7),
                      ],
                    ),
                    SizedBox(height: 35),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 45,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff783525),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Text(
                              'Selanjutnya',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                height: 1.25,
                                letterSpacing: 0.6000000238,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle "Lewati" button press event
                },
                child: Text(
                  'Lewati',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Yu Gothic UI',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    color: Color(0xff868686),
                    letterSpacing: 0.4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
