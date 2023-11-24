//Ali
import 'package:capstone_restaurant/pages/home/menu%20category/Appetizer_item_widget.dart';
import 'package:capstone_restaurant/pages/home/menu%20category/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuCategoryPage extends StatefulWidget {
const MenuCategoryPage({Key? key}) : super(key: key);
  @override
  State<MenuCategoryPage> createState() => _MenuCategoryPageState();
}

class _MenuCategoryPageState extends State<MenuCategoryPage> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        width: screenwidth,
        height: 82,
       child : BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:[
        BottomNavigationBarItem(icon:SvgPicture.asset("assets/svgs/home.svg"), label: "Beranda"),
        BottomNavigationBarItem(icon:SvgPicture.asset("assets/svgs/dokumen.svg"), label: "Pesanan"),
        BottomNavigationBarItem(icon:SvgPicture.asset("assets/svgs/massage.svg"), label: "Bantuan"),
        BottomNavigationBarItem(icon:SvgPicture.asset("assets/svgs/profile.svg"), label: "Profil"),
      ],
      selectedLabelStyle: TextStyle(color:Colors.brown ),
      unselectedLabelStyle: TextStyle(color: Colors.grey),
      selectedItemColor: Colors.brown,
      unselectedItemColor : Colors.grey,
      backgroundColor: Colors.white,
      selectedIconTheme: IconThemeData(color: Colors.brown),
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      

      )),


      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack( 
          children: [
          Image.asset(
            'assets/images/menu.png',
            height: 319,
            width: screenwidth,
            fit: BoxFit.cover,
          ),
          Center(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    IconButton(
                      onPressed: (){ 
                      // Fungsi ini akan memungkinkan  kembali ke halaman sebelumnya
                      Navigator.pop(context);
                    },
                     icon: SvgPicture.asset("assets/svgs/icon_back.svg",
                    height: 29,
                    width: 29,
                    ),
                   ),
                   Row(
                     children: [
                       IconButton(onPressed: (){
                          //tambahkan logika disini
                       }, 
                       icon: SvgPicture.asset("assets/svgs/cart.svg",
                       height: 31,
                       width: 78,
                       ),
                       ),
                       SizedBox(width: 10,
                       ),
                       IconButton(onPressed: (){
                           //tambahkan logika disini
                       }, 
                       icon: SvgPicture.asset("assets/svgs/heart.svg",
                       height: 20.7,
                       width: 23,
                       ),
                      ),
                     ],
                    )
                  ],
                 ),
                ), 
                const SizedBox(height:210,
                ),
                  //search 
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Container(
                    height: 44, 
                    width: screenwidth,
                  decoration: BoxDecoration(
                    color:const  Color(0xFFFFFFFF),
                    borderRadius:BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      prefixIcon:const Icon(
                        FeatherIcons.search,
                        size: 15,
                        color: Color(0xFF919191),
                      ),
                      suffixIcon: IconButton(
                        icon: SvgPicture.asset(
                          'assets/svgs/filter.svg',
                          height: 24,
                          width: 24,
                      ),
                      onPressed: () {
                        
                      },),
                        
                        hintText: "Cari makananmu disini",
                        hintStyle:GoogleFonts.poppins(
                          fontSize: 11, 
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF919191), 
                        ),
                      ),
                      style: const TextStyle(
                        fontFamily: 'assets/fonts/Poppins/Poppins-Regular.ttf',
                        ),
                      ),
                    ),
                ),
      
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 24, left: 21),
                    child: Text("Kategori",
                    style: GoogleFonts.poppins(
                      fontSize: 18, 
                      fontWeight:FontWeight.bold )),
                  ),

                   SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding:  EdgeInsets.only(top: 15, left: 30),
                      child: Row(
                        children: [
                         Category(imagepath: "assets/images/food_a.png", title: "Appetizer"),
                         Category(imagepath: "assets/images/food_b.png", title: "Dessert"),
                         Category(imagepath: "assets/images/food_c.png", title: "Ala Carte"),
                         Category(imagepath: "assets/images/food_d.png", title: "Paket Hemat"),
                         Category(imagepath: "assets/images/food_e.png", title: "Minum"),
                         ],
                      ),
                    ),
                  ),
                  
                  SingleChildScrollView(
                    child: Padding(padding: EdgeInsets.only(top: 17, left: 21),
                    child: Text("Appetizer",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color(0XFF010F07),
                    ),),
                    ),
                  ),
                
                  //Category Item Widget
                Column(
                  children: [
                    AppetizerItemsWidget(
                      imagePath: "assets/images/appetizer_a.png",
                      nameFood: "kentang Goreng",
                      description:  "kentang Goreng asin dengan\nsaus pedas untuk cocolannya",
                      price: "\Rp.10.000",
                    ),
                  //  SizedBox(
                  //      width: 335,
                  //      height: 1,
                  //      child: Container(
                  //      color: Color(0xffC4C4C4).withOpacity(0.5), // Sesuaikan warna dengan desain Anda
                  //          ),
                  //        ),
                  //    AppetizerItemsWidget(
                  //     imagePath: "assets/images/appetizer_b.png",
                  //     nameFood: "Garlic Bread",
                  //     description:  "Roti dengan margarin di\npanggang dan salad tomat",
                  //     price: "\Rp.15.000",
                  //     ),
                  //   SizedBox(
                  //      width: 335,
                  //      height: 1,
                  //      child: Container(
                  //      color: Color(0xffC4C4C4).withOpacity(0.5), // Sesuaikan warna dengan desain Anda
                  //          ),
                  //        ),
                  //     AppetizerItemsWidget(
                  //     imagePath: "assets/images/appetizer_c.png",
                  //     nameFood: "kentang Goreng",
                  //     description:  "kentang Goreng asin dengan saus pedas untuk cocolannya",
                  //     price: "\Rp.10.000",
                  //     ), 
                  ],
                ),
                
                 
                
                
                
               ],
                ),
            ),
           ),
         ],
           ),
      ), 
    );
  }
}












// class MenuCategoryPage extends StatelessWidget {
//   static const String routeName = '/';

//   const MenuCategoryPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: Color(0xFFD9D9D9),
//             boxShadow: [
//               BoxShadow(
//                 color: Color(0xFFD9D9D9).withOpacity(0.5), // Warna dan transparansi bayangan
//                 blurRadius: 5.0, // Tingkat kaburan
//                 spreadRadius: 2.0,
//                 offset: Offset(0, 3),
//               ),
//             ],
//           ),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 319,
//                 width: 393,
//                 child: Stack(
//                   alignment: Alignment.bottomCenter,
//                 children: [
//                   Align(
//                     alignment: Alignment.topCenter,
//                     child: SizedBox(
//                       height: 319,
//                       width: 393,
//                       child: Image.asset("assets/images/menu.png",
//                       height: 319,
//                       width: 393,
//                       fit: BoxFit.cover,
//                       ),
//                     ),
//                   )
//                 ],),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }