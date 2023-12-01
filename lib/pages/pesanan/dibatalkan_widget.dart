import 'package:flutter/material.dart';




   Widget dibatalkanWidget(BuildContext context) {
    return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 8, left: 16),
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            '14 September 2023',
            style: TextStyle(fontFamily: 'Poppins', fontSize: 15, color: Color(0xfff737373)),
          ),
        ),
      ),
    
    
    
    
    Container(
      height: 270,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          foodImage(),
          descFood(context),
        ],
      ),
    ),
    ],
    );
  }

  Flexible foodImage() {
    return Flexible(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/home/orderPage/cancel/cancelMenu.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.8),
                  ],
                ),
              ),
              child:  Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            '30 Min',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: IconButton( 
                          onPressed:  (){},
                          icon: Image.asset('assets/images/icons/heart_1.png',
                          height: 18,
                          width: 20,
                          color: Color(0xffD8D8D8)
                          ),
                             
                           
                          ),
                        ),
                      ],
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


  Flexible descFood(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      // Mediaquery untuk mengambii ukuran layar device
                      width: MediaQuery.of(context).size.width / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tuna Grill, Tofu sal..',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xfff000000),
                            ),
                          ),
                           Text(
                  '3 items | 4 km',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
                        ],
                      ),
                    ),
                  ],
                ),
               // const SizedBox(width: 10),
               
                const Spacer(),
                const Text(
                  'Rp 30.000',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xfff000000),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                
                SizedBox(
                  width: 165,
                  child: Text(
                    'Dibatalkan: salah kustom',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                ),
                 GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
                color: Color(0xfffC6C6C6),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color:  Color(0xfffC6C6C6),
                )),
            child: const Center(
              child: Text(
                'Dibatalkan',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  color: Color(0xfff737373),
                ),
              ),
            ),
          ),
        )
              ],
            ),
            // Spacer(),
            // foodorderRating()
           
          ],
        ),
      ),
    );
  }

  

  // Row foodorderRating() {
  //   return Row(
  //     children: [
  //       Expanded(
  //         child : GestureDetector(
  //         onTap: () {},
  //         child: Container(
  //           padding: const EdgeInsets.symmetric(
  //             vertical: 5,
  //             horizontal: 10,
  //           ),
  //           decoration: BoxDecoration(
  //               color: Color(0xfff783525),
  //               borderRadius: BorderRadius.circular(20),
  //               border: Border.all(
  //                 color:  Color(0xfff783525),
  //               )),
  //           child: const Center(
  //             child: Text(
  //               'Kasih Rating',
  //               style: TextStyle(
  //                 fontSize: 18,
  //                 color: Colors.white,
  //               ),
  //             ),
  //           ),
  //         ),
  //       )
  //       ),
  //       const Spacer(),
  //       GestureDetector(
  //         onTap: () {},
  //         child: Container(
  //           padding: const EdgeInsets.symmetric(
  //             vertical: 5,
  //             horizontal: 10,
  //           ),
  //           decoration: BoxDecoration(
  //               color: Colors.white,
  //               borderRadius: BorderRadius.circular(20),
  //               border: Border.all(
  //                 color:  Color(0xfff783525),
  //               )),
  //           child: const Center(
  //             child: Text(
  //               'Pesan Lagi',
  //               style: TextStyle(
  //                 fontSize: 18,
  //                 color: Color(0xfff783525),
  //               ),
  //             ),
  //           ),
  //         ),
  //       )
  //     ],
  //   );
  // }
  
