// Ali

import "package:capstone_restaurant/pages/pesanan/dibatalkan_widget.dart";
import "package:capstone_restaurant/pages/pesanan/ongoing_widget.dart";
import "package:capstone_restaurant/pages/pesanan/riwayat_widget.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";


class OrderPage extends StatefulWidget {
 
  const OrderPage({
    Key? key,
   
    }) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/back_1.png')
              ),
             const Padding(padding: EdgeInsets.only(left: 8),
              child: Text(
                "Pesanan",
                style: TextStyle(
                  fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
                 ),
                ),
              )
            ],
          ),
         bottom:const TabBar(
              labelStyle: TextStyle(
              fontFamily:'Poppins',
              fontSize: 14,
              color: Color(0xff4D0F27),
              ),
              unselectedLabelColor: Color(0xff737373),
             labelPadding: EdgeInsets.symmetric(horizontal: 15),
              indicatorColor: Color(0xff4D0F27),
              
              

              tabs: [
                Tab(text: "Berlangsung"),
                Tab(text: "Riwayat"),
                Tab(text: "Dibatalkan"),
              ],
            ), 
        ),
          body: TabBarView(
            children:[ 
              Padding(padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ongoingWidget(context),
                  ],
                ),
              ),
              ),
              Padding(padding: EdgeInsets.only(left: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                   riwayatWidget(context),
                   riwayatWidget(context),
                   riwayatWidget(context),
                   riwayatWidget(context),
                  ]
                ),
              ),
              ),
              Padding(padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                   dibatalkanWidget(context),
                   dibatalkanWidget(context),
                   dibatalkanWidget(context),
                  ],
                ),
              ),
              ),
              // ongoingWidget(context), 
              // RiwayatWidget(),
              // Container(color: Colors.blue),
           
          ],
        ),
      ),
    );
  }
}


// Widget ongoingWidget(BuildContext context) {
//     return  SizedBox(
//      width: double.infinity,
//     height: 251,
//     child: Stack(
//       children: [
//         Card(
//           clipBehavior: Clip.antiAliasWithSaveLayer,
//           child: Column(
//             children: [
//               SizedBox(
//                 width: double.infinity,
//                 height: 200,
//                 child: Image.asset('assets/images/home/orderPage/ongoing/ongoingMenu.png',
//                     fit: BoxFit.cover,),
//               )
//             ],
//           ),
//         )
//       ],
//     ),
    
//    );
//  }


