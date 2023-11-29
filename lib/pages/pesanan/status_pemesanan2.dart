import 'package:flutter/material.dart';

class Konfirmasi extends StatefulWidget {
  const Konfirmasi({Key? key}) : super(key: key);

  @override
  KonfirmasiState createState() => KonfirmasiState();
}

class KonfirmasiState extends State<Konfirmasi> {

    void navigateBack() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDDBF),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 68.0, left: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: navigateBack,
                  child: Icon(
                    Icons.arrow_circle_left_sharp,
                    color: Color(0xFF783525),
                  ),
                ),
                SizedBox(width: 8),
                Text('Konfirmasi',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Image.asset(
            'assets/images/order/confirm2.png',
            width: 344,
            height: 352,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(56),
                  topRight: Radius.circular(56),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3)
                  ),
                ],
              ),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 4,
                      width: 34,
                      color: Color(0xFFE7E7E7),
                      margin: EdgeInsets.only(bottom: 60.4),
                    ),
                    Text(
                      'pesananmu sudah di\n konfirmasi yeay!\n Yuk, lihat status pesananmu',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 79,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('lihat status pesanan');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF783525),
                        fixedSize: Size(324, 49),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(33),
                        ),
                      ),
                      child: Text(
                        'Lihat Status Pesanan',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
