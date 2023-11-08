// Katarina
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splashscreen5',
      routes: {
        '/splashscreen5': (context) => MySplashScreen(),
      },
    );
  }
}

class MySplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40), // Add a top margin of 40
        child: Container(
          width: 376,
          height: 376,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment(
                    -1.0 + (9 / 376),
                    -1.0 +
                        (137 / 376)), // Pindahkan gambar ke x = 9 dan y = 137
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 127,
                    left: 30,
                  ), // Add padding to the top of the image
                  child: Container(
                    width: 376,
                    height: 376,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/splashscreen5.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0), // Jarak antara gambar dan teks pertama
              MyText(
                text: 'Delivery offers',
                color: Color(0xFF010F07),
                fontSize: 32,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
              ),
              SizedBox(height: 5), // Jarak antara teks pertama dan teks kedua
              MyText(
                text:
                    'Memberikan penawaran untuk dikirim ke tujuan mu masing-masing, sangat menghemat waktumu',
                color: Color(0xFF868686),
                fontSize: 16,
                fontWeight: FontWeight.w100,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Color(0xFF727272),
                    ),
                  );
                }),
              ),
              SizedBox(height: 20), // Jarak antara teks kedua dan tombol
              MyButton(
                text: 'Selanjutnya',
                color: Color(0xFF783524),
                textColor: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.60,
              ),
              SizedBox(height: 10), // Jarak antara tombol dan teks "Lewati"
              MyText(
                text: 'Lewati',
                color: Color(0xFF727272),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final double letterSpacing;

  MyText({
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    this.letterSpacing = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 333,
      height: 78,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: 'Poppins',
          //fontWeight: fontWeight,
          letterSpacing: letterSpacing,
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double letterSpacing;

  MyButton({
    required this.text,
    required this.color,
    required this.textColor,
    required this.fontSize,
    required this.fontWeight,
    this.letterSpacing = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 48,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(321),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 335,
              height: 48,
              decoration: ShapeDecoration(
                color: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(37),
                ),
              ),
            ),
          ),
          Positioned(
            left: 60,
            top: 10,
            bottom: 0,
            child: SizedBox(
              width: 215,
              height: 5,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor,
                  fontSize: fontSize,
                  fontFamily: 'Poppins',
                  //fontWeight: fontWeight,
                  letterSpacing: letterSpacing,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
