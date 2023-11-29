// Rachel

import 'package:capstone_restaurant/pages/home/homepage/home/widgets/categoryContainer.dart';
import 'package:capstone_restaurant/pages/home/homepage/home/widgets/favoriteMenuCard.dart';
import 'package:capstone_restaurant/pages/home/homepage/home/widgets/larisCard.dart';
import 'package:capstone_restaurant/pages/home/homepage/home/widgets/menuCard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  DataMenu dataMenu = DataMenu();

  List<String> icons = [
    'appetizer',
    'dessert',
    'alacarte',
    'pakethemat',
    'minum',
    'allmenu',
  ];

  List<String> title = [
    'Appetizer',
    'Dessert',
    'Ala Carte',
    'Paket Hemat',
    'Minum',
    'All Menu',
  ];

  List<Widget> bannerImages = [
    Image.asset(
      'assets/images/sushi.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/pasta.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/kopi.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/pie.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/sandwich.png',
      fit: BoxFit.cover,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              myAppBar(),
              myCarrousel(),
              category(),
              recommendation(),
              favoriteMenu()
            ],
          ),
        ),
      ),
    );
  }

  Container favoriteMenu() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Menu Favoritmu',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          FavoriteCardMenu(),
          const Text(
            'Ada promo menarik nih',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Image.asset('assets/images/sale.png'),
          ),
          const Text(
            'Yuk, Cek menu terlaris kita',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => LarisCard(
                imagePth: dataMenu.terlaris[index]['image'],
                title: dataMenu.terlaris[index]['title'],
                desc: dataMenu.terlaris[index]['dec'],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container category() {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Kategori',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return KategoriCard(
                fileName: icons[index],
                title: title[index],
              );
            },
          ),
        ],
      ),
    );
  }

  Container recommendation() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Rekomendasi Buat Kamu',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 180,
            child: Image.asset(
              'assets/images/rekomendasi.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dataMenu.recMenu.length,
              itemBuilder: (context, index) => MenuCard(
                imagePth: dataMenu.recMenu[index]['image'],
                title: dataMenu.recMenu[index]['title'],
                price: dataMenu.recMenu[index]['price'],
                desc: dataMenu.recMenu[index]['dec'],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container myCarrousel() {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 200,
      child: CarouselSlider(
        items: bannerImages,
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 16 / 9,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
        ),
      ),
    );
  }

  Container myAppBar() {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://i.pinimg.com/originals/8c/1a/db/8c1adbc14703a8f586a2fe7af2066304.jpg',
            ),
            radius: 30,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello Rachel'),
                  SizedBox(height: 5),
                  Text(
                    'Mau makan apa hari ini?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active_rounded,
              color: Colors.orange[700],
            ),
          )
        ],
      ),
    );
  }
}
