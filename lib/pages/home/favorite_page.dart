// delia

import 'package:capstone_restaurant/logic/data_api_handler.dart';
import 'package:capstone_restaurant/pages/home/popup_menu_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
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
            const SizedBox(height: 18),
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

Widget favMenuMaker(context, id) {
  final menuProvider = Provider.of<MenuDataProvider>(context, listen: false);
  return FutureBuilder(
      future: menuProvider.getMenuById(id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
              child: CircularProgressIndicator(
            color: primary4,
            strokeWidth: 6,
          ));
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          Map foodData = snapshot.data!;
          print('foodData: $foodData');
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: PopUpMenuDetail(data: foodData),
                      type: PageTransitionType.fade));
            },
            child: Container(
                margin: const EdgeInsets.only(bottom: 13, left: 16, right: 16),
                decoration: BoxDecoration(
                    color: primary2,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 6)
                    ]),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 32,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(16)),
                            child: Image.network(
                              foodData['image'],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            left: 15,
                            bottom: 9,
                            child: Text(
                              '15 Min',
                              style: poppins.copyWith(
                                  fontSize: 16, color: primary2),
                            )),
                        Positioned(
                          right: 25,
                          bottom: 13,
                          child: Consumer<FavoritesMenuHandler>(
                              builder: (context, favProvider, child) {
                            return GestureDetector(
                              onTap: () {
                                // setState(() {
                                //   addToFav(data['id']);
                                // });
                                favProvider.addToFav(id);
                              },
                              child: Image.asset(
                                'assets/images/icons/favW.png',
                                color: favProvider.data.contains(id)
                                    ? primary3
                                    : bright,
                              ),
                            );
                          }),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ConstrainedBox(
                                    constraints:
                                        const BoxConstraints(maxWidth: 160),
                                    child: Text(foodData['name'],
                                        overflow: TextOverflow.ellipsis,
                                        style: poppins.copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16)),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    width: 37,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        color: yellow,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/icons/star.png',
                                            width: 9,
                                            color: Colors.white,
                                          ),
                                          Text('4.5',
                                              style: poppins.copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 10,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text('Rp ${foodData['price']}',
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16))
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            height: 48,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  foodData['description'],
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: outline),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
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
                                      debugPrint('decrement tertekan');
                                    },
                                    child: Image.asset(
                                      'assets/images/icons/decrement.png',
                                      width: 24,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    '1',
                                    style: poppins.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(width: 16),
                                  GestureDetector(
                                    onTap: () {
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
                )),
          );
        }
      });
}
