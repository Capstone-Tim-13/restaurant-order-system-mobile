import 'package:capstone_restaurant/pages/home/favorite_page.dart';
import 'package:capstone_restaurant/pages/order/cart_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class PopUpMenuDetail extends StatefulWidget {
  final dynamic data;
  const PopUpMenuDetail({super.key, required this.data});

  @override
  State<PopUpMenuDetail> createState() => _PopUpMenuDetailState();
}

class _PopUpMenuDetailState extends State<PopUpMenuDetail> {
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
            child: Image.asset('assets/images/icons/closeW.png'),
          ),
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
    );
  }

  Widget menubyCatPage() {
    String title = widget.data['name'];
    String subtitle = widget.data['description'];
    String price = widget.data['price'].toString();
    String img = widget.data['image'];
    int averageRating = 4;
    String totalRating = '5122';
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(img),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter)),
            child: Column(
              children: [
                const SizedBox(height: 330),
                Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: primary2,
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(32))),
                    child: Column(
                      children: [
                        const SizedBox(height: 11),
                        Image.asset('assets/images/login/handle.png'),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.only(
                              left: 17, right: 17, top: 18),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  title,
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                              ),
                              const SizedBox(height: 7),
                              Row(
                                children: [
                                  Row(
                                    children: List.generate(5, (index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4),
                                        child: Image.asset(
                                          index < 4
                                              ? 'assets/images/icons/star.png'
                                              : 'assets/images/icons/star.png',
                                          color: index < averageRating
                                              ? tertiary3
                                              : outline,
                                          width: 12,
                                        ),
                                      );
                                    }),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '${averageRating.toString()}.0',
                                    style: poppins.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '($totalRating Reviews)',
                                    style: poppins.copyWith(
                                        color: outline, fontSize: 12),
                                  )
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  Text(
                                    'Camilan',
                                    style: poppins.copyWith(
                                        color: outline, fontSize: 11),
                                  ),
                                  const SizedBox(width: 15),
                                  Image.asset(
                                    'assets/images/icons/like.png',
                                    width: 12,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '42 rb orang menyukai ini',
                                    style: poppins.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: outline,
                                        fontSize: 11),
                                  ),
                                  const Spacer(),
                                  Text(
                                    'Rp $price',
                                    style: poppins.copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: primary4,
                                        fontSize: 24),
                                  ),
                                ],
                              ),
                              const Divider(),
                              const SizedBox(height: 20),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 20,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Detail',
                                      style: poppins.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      subtitle,
                                      style: poppins.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(height: 10),
                                    const Divider(),
                                    const SizedBox(height: 20),
                                    Text(
                                      'Rating & Review',
                                      style: poppins.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      subtitle,
                                      style: poppins.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                              const Divider(),
                              const SizedBox(height: 20),
                              // Column(
                              //   crossAxisAlignment: CrossAxisAlignment.start,
                              //   children: [

                              //   ],
                              // ),
                              const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 50),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: const CartPage(),
                                            type: PageTransitionType.fade));
                                    debugPrint('tambah pesanan tertekan');
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: primary4,
                                      borderRadius: BorderRadius.circular(37),
                                    ),
                                    width: 335,
                                    height: 48,
                                    child: Center(
                                      child: Text(
                                        'Tambah Pesanan',
                                        style: poppins.copyWith(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: primary2),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
