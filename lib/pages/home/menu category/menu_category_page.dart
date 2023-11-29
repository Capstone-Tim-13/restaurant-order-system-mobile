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
                
                  
                  Padding(padding: EdgeInsets.only(top: 17, left: 21),
                  child: Text("Appetizer",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0XFF010F07),
                  ),),
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
                   SizedBox(
                       width: screenwidth,
                       height: 1,
                       child: Container(
                       color: Color(0xffC4C4C4).withOpacity(0.5), // Sesuaikan warna dengan desain Anda
                           ),
                         ),
                     AppetizerItemsWidget(
                      imagePath: "assets/images/appetizer_b.png",
                      nameFood: "Garlic Bread",
                      description:  "Roti dengan margarin di\npanggang dan salad tomat",
                      price: "\Rp.15.000",
                      ),
                    SizedBox(
                       width: screenwidth,
                       height: 1,
                       child: Container(
                       color: Color(0xffC4C4C4).withOpacity(0.5), // Sesuaikan warna dengan desain Anda
                           ),
                         ),
                      AppetizerItemsWidget(
                      imagePath: "assets/images/appetizer_c.png",
                      nameFood: "Croissant",
                      description:  "Roti Croissant yang renyah\ndan lembut,pas buat kamu",
                      price: "\Rp.10.000",
                      ), 
                  ],
                ),
                   
                Padding(padding: EdgeInsets.only(top: 17, left: 21),
                  child: Text("Ala Carte",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0XFF010F07),
                  ),),
                  ),

                  //Category Item Widget
                  Column(
                  children: [
                    AppetizerItemsWidget(
                      imagePath: "assets/images/alacarte_a.png",
                      nameFood: "Mie Goreng",
                      description:  "Mie goreng bumbu ala alta-\nresto pasti kamu suka",
                      price: "\Rp.12.000",
                    ),
                   SizedBox(
                       width: screenwidth,
                       height: 1,
                       child: Container(
                       color: Color(0xffC4C4C4).withOpacity(0.5), // Sesuaikan warna dengan desain Anda
                           ),
                         ),
                     AppetizerItemsWidget(
                      imagePath: "assets/images/alacarte_b.png",
                      nameFood: "Nasi Kari",
                      description:  "Nasi kari ayam gurih dengan\nedamame",
                      price: "\Rp.16.000",
                      ),
                    SizedBox(
                       width: screenwidth,
                       height: 1,
                       child: Container(
                       color: Color(0xffC4C4C4).withOpacity(0.5), // Sesuaikan warna dengan desain Anda
                           ),
                         ),
                      AppetizerItemsWidget(
                      imagePath: "assets/images/alacarte_c.png",
                      nameFood: "Ayam Kuluyuk",
                      description:  "Ayam tepung dimasak\nbumbu asam manis",
                      price: "\Rp.15.000",
                      ), 
                  ],
                ),

                Padding(padding: EdgeInsets.only(top: 17, left: 21),
                  child: Text("Dessert",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0XFF010F07),
                  ),),
                  ),

                  //Category Item Widget
                  Column(
                  children: [
                    AppetizerItemsWidget(
                      imagePath: "assets/images/dessert_a.png",
                      nameFood: "Donat Kentang",
                      description:  "Donat kentang yang dihiasi\nmesses dan cokelat",
                      price: "\Rp.15.000",
                    ),
                   SizedBox(
                       width: screenwidth,
                       height: 1,
                       child: Container(
                       color: Color(0xffC4C4C4).withOpacity(0.5), // Sesuaikan warna dengan desain Anda
                           ),
                         ),
                     AppetizerItemsWidget(
                      imagePath: "assets/images/dessert_b.png",
                      nameFood: "Choco Brownies",
                      description:  "Brownies cokelat lembut\ndengan topping saus cokelat",
                      price: "\Rp.10.000",
                      ),
                    SizedBox(
                       width: screenwidth,
                       height: 1,
                       child: Container(
                       color: Color(0xffC4C4C4).withOpacity(0.5), // Sesuaikan warna dengan desain Anda
                           ),
                         ),
                      AppetizerItemsWidget(
                      imagePath: "assets/images/dessert_c.png",
                      nameFood: "Lotus Muffin",
                      description:  "Muffin kopi dengan krim\ncokelat dan biskuit",
                      price: "\Rp.8.000",
                      ), 
                  ],
                ),

                Padding(padding: EdgeInsets.only(top: 17, left: 21),
                  child: Text("Paket Hemat",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0XFF010F07),
                  ),),
                  ),

                  //Category Item Widget
                  Column(
                  children: [
                    AppetizerItemsWidget(
                      imagePath: "assets/images/pakethemat_a.png",
                      nameFood: "PARE (Paket Rame)",
                      description:  "Makan bersama kawanmu\nrame-rame biar makin seru!",
                      price: "\Rp.115.000",
                    ),
                   SizedBox(
                       width: screenwidth,
                       height: 1,
                       child: Container(
                       color: Color(0xffC4C4C4).withOpacity(0.5), // Sesuaikan warna dengan desain Anda
                           ),
                         ),
                     AppetizerItemsWidget(
                      imagePath: "assets/images/pakethemat_b.png",
                      nameFood: "Paket Berdua",
                      description:  "Paket hemat unutk makan\nberdua sama kawanmu",
                      price: "\Rp.45.000",
                      ),
                    SizedBox(
                       width: screenwidth,
                       height: 1,
                       child: Container(
                       color: Color(0xffC4C4C4).withOpacity(0.5), // Sesuaikan warna dengan desain Anda
                           ),
                         ),
                      AppetizerItemsWidget(
                      imagePath: "assets/images/pakethemat_c.png",
                      nameFood: "Paket Berempat",
                      description:  "Nikmatin menu beragam\npaket hemat berempat yuk",
                      price: "\Rp.70.000",
                      ), 
                  ],
                ),

                Padding(padding: EdgeInsets.only(top: 17, left: 21),
                  child: Text("Minum",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0XFF010F07),
                  ),),
                  ),

                  //Category Item Widget
                  Column(
                  children: [
                    AppetizerItemsWidget(
                      imagePath: "assets/images/minum_a.png",
                      nameFood: "Soda Lemon",
                      description:  "Air soda dengan gula dan\nlemon",
                      price: "\Rp.15.000",
                    ),
                   SizedBox(
                       width: screenwidth,
                       height: 1,
                       child: Container(
                       color: Color(0xffC4C4C4).withOpacity(0.5), // Sesuaikan warna dengan desain Anda
                           ),
                         ),
                     AppetizerItemsWidget(
                      imagePath: "assets/images/minum_b.png",
                      nameFood: "Capuccino",
                      description:  "Espresso ditambah dengan\nsusu",
                      price: "\Rp.10.000",
                      ),
                    SizedBox(
                       width: screenwidth,
                       height: 1,
                       child: Container(
                       color: Color(0xffC4C4C4).withOpacity(0.5), // Sesuaikan warna dengan desain Anda
                           ),
                         ),
                      AppetizerItemsWidget(
                      imagePath: "assets/images/minum_c.png",
                      nameFood: "Americano",
                      description:  "Espresso dengan air dan es\nbatu",
                      price: "\Rp.70.000",
                      ), 
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