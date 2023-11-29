import 'package:flutter/material.dart';

class StatusPemesanan extends StatefulWidget {
  const StatusPemesanan({Key? key}) : super(key: key);

  @override
  StatusPemesananState createState() => StatusPemesananState();
}

class StatusPemesananState extends State<StatusPemesanan> {
  
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
            padding: EdgeInsets.only(top: 51.0, left: 21.0),
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
          SizedBox(height: 20,),
          Image.asset('assets/images/order/confirm.png', width: 408, height: 357, alignment: Alignment.centerLeft),
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
              child: Column(
                children: [
                  SizedBox(height: 8,),
                  Container(
                    height: 4,
                    width: 34,
                    color: Color(0xFFE7E7E7),
                    margin: EdgeInsets.only(bottom: 34.89),
                  ),
                  Text(
                    'Sebentar ya, pesananmu masih dalam konfirmasi',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 38,),
                  Image.asset('assets/images/Loading.png', width: 144, height: 144,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
