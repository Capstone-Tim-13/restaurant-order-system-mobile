import "package:flutter/material.dart";


//   Widget ongoingWidget(BuildContext context) {
//     return Container(
//      width: double.infinity,
//     // height: 251,
//     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//      child: Column(
//        children: [
//          Stack(           //tambahkan container di stack
//           children: [
//             Card(
              
//               clipBehavior: Clip.antiAliasWithSaveLayer,
//               shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20),),
//               elevation: 10,
//               child: Column(
//                 children: [
//                   SizedBox(
//                      width: double.infinity,
//                       height: 120,
//                     child: Image.asset('assets/images/home/orderPage/ongoing/ongoingMenu.png',
//                           fit: BoxFit.cover,
                         
                         
//                           ),
//                   ),
//                 ],
//               ),     
//                   ),
//                Positioned(
//                 top:85,
//                 left : 18,
//                 child : Row(
//                   children: [
//                     Text(
//                     '30 Min',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.normal,
//                     ),
//                     ),
//                     SizedBox(width:238 ),
         
//                     IconButton(onPressed: (){},
//                      icon: Image.asset("assets/images/icons/heart_1.png",
//                      height: 18,
//                      width: 20,
//                      color: Color(0xffF0AF9F),
//                      ),
//                      )
//                   ],
//                 ))
//           ],
//          ),
//        ],
//      ),
//     );
//   }


      // Widget ongoingWidget (BuildContext context){
      //   return GridView.count(
      //     crossAxisCount: 2,
      //     shrinkWrap: true,
      //     childAspectRatio: 0.76,
      //     children: [
      //        for (int i= 1; i < 5; i++)
      //        Container(
      //         padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      //         margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20),
      //           color: Colors.black,
      //           boxShadow: [
      //           BoxShadow(
      //             color: Colors.black.withOpacity(0.4),
      //             spreadRadius: 1,
      //             blurRadius: 8,                )
      //           ],
                
      //         ),
      //         child: Column(
      //           children: [
      //             InkWell(
      //               onTap: () {},
      //               child: Container(
      //                 margin: EdgeInsets.all(10),
      //                 child: Image.asset("assets/images/home/homePage/bestSeller/bestSeller.png",
      //                 width: 120,
      //                 height: 120,),
      //               ),
      //             )
      //           ],
      //         ),
      //        )
      //     ],

      //   );

      // }

       Widget ongoingWidget(BuildContext context) {
        return SizedBox(
          width: double.infinity,
          height: 251,
          child: Stack(
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: Image.asset('assets/images/home/orderPage/ongoing/ongoingMenu.png',
                          fit: BoxFit.cover,),

                    )
                  ],
                ),
              )
            ],
          ),
        );
       }