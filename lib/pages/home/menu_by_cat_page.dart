import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/pages/home/favorite_page.dart';
import 'package:capstone_restaurant/pages/home/menu_detail_page.dart';
import 'package:capstone_restaurant/pages/home/search_page.dart';
import 'package:capstone_restaurant/pages/order/cart_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class MenubyCat extends StatefulWidget {
  final String selectedCat;
  const MenubyCat({super.key, required this.selectedCat});

  @override
  State<MenubyCat> createState() => _MenubyCatState();
}

class _MenubyCatState extends State<MenubyCat> {
  String selectedCategory = '';

  @override
  void initState() {
    super.initState();
    selectedCategory = widget.selectedCat;
  }

  dynamic getAllData(data, type) {
    dynamic totalLength = 0;
    dynamic allData = [];

    data.forEach((category, items) {
      totalLength += items.length;
    });

    menuData.forEach((category, items) {
      allData.addAll(items);
    });

    if (type == 'length') {
      return totalLength;
    } else {
      return allData;
    }
  }

  int getListLen() {
    switch (selectedCategory) {
      case 'Appetizer':
        return menuData['Appetizer'].length;
      case 'Dessert':
        return menuData['Dessert'].length;
      case 'Ala Carte':
        return menuData['Ala Carte'].length;
      case 'Paket Hemat':
        return menuData['Paket Hemat'].length;
      case 'Minum':
        return menuData['Minum'].length;
      default:
        return getAllData(menuData, 'length');
    }
  }

  showMenu(index) {
    switch (selectedCategory) {
      case 'Appetizer':
        return itemBuilder(menuData['Appetizer'][index]);
      case 'Dessert':
        return itemBuilder(menuData['Dessert'][index]);
      case 'Ala Carte':
        return itemBuilder(menuData['Ala Carte'][index]);
      case 'Paket Hemat':
        return itemBuilder(menuData['Paket Hemat'][index]);
      case 'Minum':
        return itemBuilder(menuData['Minum'][index]);
      default:
        return itemBuilder(getAllData(menuData, 'menu')[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: showAppBar(),
      body: menubyCatPage(),
    );
  }

  showAppBar() {
    return AppBar(
      scrolledUnderElevation: 1,
      backgroundColor: Colors.transparent,
      surfaceTintColor: primary4,
      shadowColor: primary4,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/images/icons/backButtonW.png'),
          ),
          SizedBox(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const CartPage(),
                            type: PageTransitionType.fade));
                    debugPrint('cart tertekan');
                  },
                  child: Image.asset('assets/images/icons/cartW.png'),
                ),
                const SizedBox(width: 24),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: const FavoriteMenu(),
                            type: PageTransitionType.fade));
                    debugPrint('favorit tertekan');
                  },
                  child: Image.asset('assets/images/icons/favW.png'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget menubyCatPage() {
    return SingleChildScrollView(
      child: Stack(
        children: [
          // bg image
          Container(
            width: MediaQuery.of(context).size.width,
            height: 319,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/home/homePage/menubyCat/background.png'),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter)),
          ),
          // search bar
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const SearchPage(),
                        type: PageTransitionType.fade));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 300),
                decoration: homePageMenu,
                width: MediaQuery.of(context).size.width - 82,
                height: 44,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/icons/search.png',
                        width: 15,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Cari makananmu disini',
                        style: poppins.copyWith(fontSize: 11, color: outline),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/icons/filter.png',
                        width: 17,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // category
          Container(
            margin: const EdgeInsets.only(top: 320),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 21, top: 46, right: 21),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Kategori',
                          style: poppins.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 18)),
                      SizedBox(
                        height: 78,
                        child: ListView.builder(
                          itemCount: catData.length,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            String title = catData[index][0];
                            String img = catData[index][1];
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCategory = title;
                                });
                                debugPrint('$title tertekan');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 194,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: primary2,
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 6,
                                        offset: Offset(0, 0),
                                        spreadRadius: -2,
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset(
                                          img,
                                          width: 62,
                                        ),
                                        Text(
                                          title,
                                          style: poppins.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21, top: 17, right: 35),
                  child: Column(
                    children: [
                      Text(selectedCategory,
                          style: poppins.copyWith(
                              fontWeight: FontWeight.w300, fontSize: 20)),
                    ],
                  ),
                )
              ],
            ),
          ),
          // menu by category
          Container(
              margin: const EdgeInsets.only(top: 520),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: getListLen(),
                itemBuilder: (context, index) {
                  return showMenu(index);
                },
              ))
        ],
      ),
    );
  }

  Widget itemBuilder(data) {
    String title = data[0];
    String subtitle = data[1];
    String price = data[2];
    String img = data[3];
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: MenuDetail(data: data,),
                type: PageTransitionType.fade));
        debugPrint('menu ${data[0]} tertekan');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 41, left: 21, right: 35),
        child: Row(
          children: [
            SizedBox(
              width: 110,
              child: Image.asset(img),
            ),
            const SizedBox(width: 18),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: poppins.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/icons/favW.png',
                        color: bright,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 6),
                SizedBox(
                  height: 48,
                  child: Text(
                    subtitle,
                    style: poppins.copyWith(fontSize: 14, color: outline),
                  ),
                ),
                // const SizedBox(height: 7),
                Row(
                  children: [
                    Text(
                      'Rp $price',
                      style: poppins.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: primary4),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        debugPrint('add ${data[0]} tertekan');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: primary4,
                          borderRadius: BorderRadius.circular(37),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          child: Center(
                            child: Text(
                              '+ Add',
                              style: poppins.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: primary2),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
