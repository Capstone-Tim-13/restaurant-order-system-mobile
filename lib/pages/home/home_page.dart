import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/pages/home/favorite_page.dart';
import 'package:capstone_restaurant/pages/home/menu_by_cat_page.dart';
import 'package:capstone_restaurant/pages/home/notification_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  final Function changePageIndex;
  const HomePage({super.key, required this.changePageIndex});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool addToFav = false;
  int currentCarouselIndex = 0;
  int addToBasket = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          showGreeting(widget.changePageIndex),
          showBanner(),
          showCat(),
          showRecommendation(),
          showFavMenu(),
          showPromo(),
          showBestSeller()
        ],
      ),
    ));
  }

  Widget showGreeting(Function changePageIndex) {
    return Padding(
      padding: const EdgeInsets.only(top: 56, left: 21, right: 21, bottom: 21),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              debugPrint('tertekan');
              changePageIndex(3);
            },
            child: const CircleAvatar(
                radius: 23,
                backgroundImage:
                    AssetImage('assets/images/home/accPage/avatar.png')),
          ),
          const SizedBox(width: 11),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Hydre!',
                style: poppins.copyWith(fontSize: 15),
              ),
              Text(
                'Mau makan apa hari ini?',
                style:
                    poppins.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: const NotificationPage(),
                      type: PageTransitionType.fade));
              debugPrint('notification tertekan');
            },
            child: Image.asset('assets/images/icons/notification.png'),
          )
        ],
      ),
    );
  }

  Widget showBanner() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: SizedBox(
          // color: Colors.red,
          width: MediaQuery.of(context).size.width - 8,
          child: Stack(
            children: [
              Center(
                child: CarouselSlider(
                    items: [
                      ...bannerImg.map((data) => SizedBox(
                            width: double.infinity,
                            child: Image.asset(
                              data,
                              fit: BoxFit.fill,
                            ),
                          ))
                    ],
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      enlargeFactor: 0.2,
                      height: 237,
                      viewportFraction: 1,
                      autoPlay: true,
                      autoPlayCurve: Curves.easeOutQuint,
                      autoPlayAnimationDuration: const Duration(seconds: 2),
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentCarouselIndex = index;
                        });
                      },
                    )),
              ),
              Positioned(
                  right: 26,
                  bottom: 34,
                  child: DotsIndicator(
                    dotsCount: bannerImg.length,
                    position: currentCarouselIndex,
                    decorator: DotsDecorator(
                        color: outline,
                        size: const Size(6, 6),
                        activeColor: primary2,
                        activeSize: const Size(26, 5),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                  )),
              // Positioned(
              //     left: 32,
              //     bottom: 42,
              //     child: Text(
              //       'Sajian Terbaik buat kamu kami \npersiapkan',
              //       style: poppins.copyWith(
              //           fontWeight: FontWeight.w700,
              //           fontSize: 16,
              //           color: primary2),
              //     )),
            ],
          )),
    );
  }

  Widget showCat() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'kategori',
                      style: poppins.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    )),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: catData.length, // Set the number of items
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: (105 / 109),
                        crossAxisCount: 3,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: MenubyCat(
                                        selectedCat: catData[index][0]),
                                    type: PageTransitionType.fade));
                            debugPrint('${catData[index][0]} tertekan');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primary2,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12, blurRadius: 6)
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    catData[index][1],
                                    width: 74,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    catData[index][0],
                                    style: poppins.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget showRecommendation() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 41),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Rekomendasi Buat Kamu',
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 18),
                )),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/home/homePage/recommendation/banner.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: MediaQuery.of(context).size.width - 21,
            height: 380,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(bottom: 25),
                shrinkWrap: true,
                itemCount: catData.length,
                itemBuilder: (BuildContext context, index) {
                  return recommendationMenuMaker();
                }),
          ),
        ],
      ),
    );
  }

  Widget showFavMenu() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Menu Favoritmu',
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 18),
                )),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width - 21,
            height: 265,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(bottom: 10),
                shrinkWrap: true,
                itemCount: catData.length,
                itemBuilder: (BuildContext context, index) {
                  return favMenuMaker();
                }),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: const FavoriteMenu(),
                          type: PageTransitionType.fade));
                  debugPrint('Lihat lainnya tertekan');
                },
                child: Text(
                  'Lihat lainnya',
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: outline),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget showPromo() {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ada promo menarik nih',
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 18),
                )),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width - 14,
            child: Image.asset('assets/images/home/homePage/promoBanner.png'),
          )
        ],
      ),
    );
  }

  Widget showBestSeller() {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Yuk, Cek menu terlaris kita',
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w600, fontSize: 18),
                )),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width - 21,
            height: 281,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(bottom: 12),
                shrinkWrap: true,
                itemCount: catData.length,
                itemBuilder: (BuildContext context, index) {
                  return bestSellerMenuMaker();
                }),
          ),
        ],
      ),
    );
  }

  // ----------------------------------------------------------------

  Widget recommendationMenuMaker() {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5, top: 5),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 200,
        ),
        child: Container(
          width: 230,
          decoration: homePageMenu,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Image.asset(
                  'assets/images/home/homePage/recommendation/recomMenu.png'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        addToFav = !addToFav;
                      });
                    },
                    child: Image.asset(
                      'assets/images/icons/favW.png',
                      color: addToFav ? primary3 : bright,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tuna With Lemon',
                        style: poppins.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 16)),
                    Text('Rp 15.000',
                        style: poppins.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: secondary3)),
                    Text('Tuna bumbu kuning dengan perasan lemon yang segar',
                        style: poppins.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: outline)),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      width: 37,
                      height: 18,
                      decoration: BoxDecoration(
                          color: yellow,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    const SizedBox(width: 8),
                    Text('30 Min',
                        style: poppins.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: outline)),
                    const SizedBox(width: 8),
                    Text('• Best Menu',
                        style: poppins.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: outline)),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget favMenuMaker() {
    return Padding(
        padding: const EdgeInsets.only(right: 5, left: 5, top: 5),
        child: Container(
            width: 352,
            decoration: homePageMenu,
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                        'assets/images/home/homePage/favorit/favmenu.png'),
                    Positioned(
                        left: 15,
                        bottom: 9,
                        child: Text(
                          '15 Min',
                          style:
                              poppins.copyWith(fontSize: 16, color: primary2),
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
                // const SizedBox(height: 10),
                Padding(
                  padding:const EdgeInsets.only(left: 15, right: 15, top: 9),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Mie Lamian Pedas',
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16)),
                              const SizedBox(width: 10),
                              Container(
                                width: 37,
                                height: 18,
                                decoration: BoxDecoration(
                                    color: yellow,
                                    borderRadius: BorderRadius.circular(12)),
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
                            Text(
                                'Mie Lamian yang lembut dengan kuah \nsup pedas',
                                style: poppins.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: outline)),
                          ],
                        ),
                      ),
                      // const SizedBox(height: 9),
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
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 16),
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }

  Widget bestSellerMenuMaker() {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5, top: 5),
      child: Container(
        width: 163,
        decoration: homePageMenu,
        child: Column(children: [
          Image.asset('assets/images/home/homePage/bestSeller/bestSeller.png'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Napoli Fussili',
                      style: poppins.copyWith(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Container(
                      width: 37,
                      height: 18,
                      decoration: BoxDecoration(
                          color: yellow,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icons/star.png',
                            width: 9,
                          ),
                          Text('4.8',
                              style: poppins.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: primary2)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  'Fussili yang lezat dengan bumbu napoli yang segar',
                  style: poppins.copyWith(fontSize: 10, color: outline),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
