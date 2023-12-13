// delia

import 'package:capstone_restaurant/logic/provider_handler.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:capstone_restaurant/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteMenu extends StatefulWidget {
  const FavoriteMenu({super.key});

  @override
  State<FavoriteMenu> createState() => _FavoriteMenuState();
}

class _FavoriteMenuState extends State<FavoriteMenu> {
  int addToBasket = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      body: favoritePage(),
    );
  }

  showAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/images/icons/backButton.png'),
          ),
          const SizedBox(width: 8),
          Text(
            "Menu Favorit",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget favoritePage() {
    return Consumer<FavoritesMenuHandler>(
        builder: (context, favProvider, child) {
      if (favProvider.data.isNotEmpty) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: favProvider.data.length,
                itemBuilder: ((BuildContext context, index) {
                  // return Text('aaaa');
                  return favMenuMaker(context, favProvider.data[index]);
                }),
              ),
            ),
          ],
        );
      } else {
        return Center(
          child: Text(
            'Belum ada menu favorit',
            style: poppins.copyWith(fontSize: 17),
          ),
        );
      }
    });
  }
}
