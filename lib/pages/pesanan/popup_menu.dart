import 'package:flutter/material.dart';

class PopupMenuPage extends StatefulWidget {
  static const String routeName = '/popupmenupage';
  const PopupMenuPage({Key? key}) : super(key: key);

  @override
  _PopupMenuPageState createState() => _PopupMenuPageState();
}

class _PopupMenuPageState extends State<PopupMenuPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Image.asset(
                'assets/images/Review5.png',
                fit: BoxFit.contain,
                width: screenWidth, // Set the width to the screen width
              ),
              Positioned(
                left: 16, // Adjust the left position as needed
                top: 16, // Adjust the top position as needed
                child: Image.asset(
                  'assets/images/Close.png',
                  width: 32, // Adjust the width as needed
                  height: 32, // Adjust the height as needed
                ),
              ),
              Positioned(
                right: 16, // Adjust the right position as needed
                top: 16, // Adjust the top position as needed
                child: Image.asset(
                  'assets/images/Heart.png',
                  width: 32, // Adjust the width as needed
                  height: 32, // Adjust the height as needed
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  width: screenWidth,
                  padding: EdgeInsets.symmetric(
                      horizontal: 16), // Adjust the padding as needed
                  height: 200, // Adjust the height as needed
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: 10, left: 10, bottom: 10, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kentang Goreng',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star, color: Colors.grey, size: 20),
                            SizedBox(width: 5),
                            Text(
                              '4.0',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              ' (394 Reviews)',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: Color.fromARGB(255, 180, 180, 179),
                              size: 5,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Camilan',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.thumb_up,
                              color: Color.fromARGB(255, 180, 180, 179),
                              size: 10,
                            ),
                            SizedBox(width: 5),
                            Text(
                              '42 rb orang menyukai ini',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(width: 40),
                            Text(
                              'Rp 10.000',
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF783524),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          color: Colors.grey,
                          height: 1, // Line height
                          width: double.infinity, // Line width
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Detail',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Kentang goreng renyah dengan ditabur bumbu asin dan saus pilihan untuk cocolannya',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            //fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          color: Colors.grey,
                          height: 1, // Line height
                          width: double.infinity, // Line width
                        ),
                        Row(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              'Rating & Review',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Spacer(), // Add Spacer to push the next widget to the right
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Text(
                                'Lihat lainnya',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                  //fontFamily: 'Poppins',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://static.promediateknologi.id/crop/0x44:1080x700/750x500/webp/photo/2023/06/16/Link-dan-cara-pakai-Snow-AI-Profile-3078686139.jpg"),
                                  fit: BoxFit.fill,
                                ),
                                shape: CircleBorder(),
                              ),
                            ),
                            Text(
                              'Dinda Riska',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: 50,
                              height: 15,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right:
                                            5), // Adjust the padding as needed
                                    child: Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Enak kentangnya, ni adanya bukti beli burger ya, tapi semuanya enak gaes! ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            //fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            buildResponsiveImage("assets/images/Review2.png"),
                            buildResponsiveImage("assets/images/Review3.png"),
                            buildResponsiveImage("assets/images/Review4.png"),
                            buildResponsiveImage("assets/images/Review5.png"),
                            buildResponsiveImage("assets/images/Review1.png"),
                          ],
                        ),
                        SizedBox(
                            height:
                                16), // Add some space between images and the button

// Add the button
                        Container(
                          width: 324,
                          height: 49,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 6,
                                offset: Offset(1, 1),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 324,
                                  height: 49,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF783524),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(33),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Tambah Pesanan',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
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
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 16),
                  // Add more widgets as needed
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildResponsiveImage(String imagePath) {
  return Container(
    margin: EdgeInsets.only(right: 5),
    width: 64,
    height: 57.35,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
  );
}
