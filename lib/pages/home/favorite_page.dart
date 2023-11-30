// delia

import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

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
    return Column(
      children: [
        const SizedBox(height: 18),
        Expanded(
            child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 4,
          itemBuilder: ((BuildContext context, index) {
            return favMenuMaker();
          }),
        ))
      ],
    );
  }

  Widget favMenuMaker() {
    return Container(
        margin: const EdgeInsets.only(bottom: 13, left: 16, right: 16),
        decoration: BoxDecoration(
            color: primary2,
            borderRadius: BorderRadius.circular(22),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)]),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/home/homePage/favorit/favmenu.png'),
                Positioned(
                    left: 15,
                    bottom: 9,
                    child: Text(
                      '15 Min',
                      style: poppins.copyWith(fontSize: 16, color: primary2),
                    )),
                Positioned(
                  right: 25,
                  bottom: 13,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        debugPrint('menu fav pressed');
                      });
                    },
                    child: Image.asset(
                      'assets/images/icons/fav.png',
                      width: 20,
                      color: primary3,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 165,
                            child: Text('Mie Lamian Pedas',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: poppins.copyWith(
                                    fontWeight: FontWeight.w500, fontSize: 16)),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 37,
                            height: 18,
                            decoration: BoxDecoration(
                                color: yellow,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/icons/star.png',
                                    width: 9,
                                  ),
                                  Text('4.5',
                                      style: poppins.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: primary2)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text('Rp 25.000',
                          style: poppins.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 16))
                    ],
                  ),
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mie Lamian yang lembut dengan kuah \nsup pedas',
                            style: poppins.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: outline)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 9),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (addToBasket > 0) {
                                setState(() {
                                  addToBasket -= 1;
                                });
                              }
                              debugPrint('decrement tertekan');
                            },
                            child: Image.asset(
                              'assets/images/icons/decrement.png',
                              width: 24,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            addToBasket.toString(),
                            style: poppins.copyWith(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                          const SizedBox(width: 16),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                addToBasket += 1;
                              });
                              debugPrint('increment tertekan');
                            },
                            child: Image.asset(
                              'assets/images/icons/increment.png',
                              width: 24,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          debugPrint('add tertekan');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: primary4,
                            borderRadius: BorderRadius.circular(37),
                          ),
                          width: 86,
                          height: 32,
                          child: Center(
                            child: Text(
                              '+ Add',
                              style: poppins.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: primary2),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
