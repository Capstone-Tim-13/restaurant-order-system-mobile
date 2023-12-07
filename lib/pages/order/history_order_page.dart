import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/pages/order/input_rating_page.dart';
import 'package:capstone_restaurant/pages/order/order_page.dart';
import 'package:capstone_restaurant/pages/order/receipt_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:capstone_restaurant/widgets.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Widget historyOrder(context, data) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 8, left: 16),
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            formatDate(data['createdAt']),
            style: poppins.copyWith(fontSize: 15, color: outline),
          ),
        ),
      ),
      const SizedBox(height: 8),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              PageTransition(
                  child: ReceiptPage(
                    data: data,
                  ),
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
                    Image.asset(orderHistory[0]),
                    Positioned(
                        left: 15,
                        bottom: 9,
                        child: Text(
                          '30 Min',
                          style:
                              poppins.copyWith(fontSize: 16, color: primary2),
                        )),
                    Positioned(
                      right: 25,
                      bottom: 13,
                      child: GestureDetector(
                        onTap: () {
                          debugPrint('menu fav pressed');
                        },
                        child: Image.asset(
                          'assets/images/icons/fav.png',
                          width: 20,
                          color: bright,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 165,
                                child: Text(data['name'],
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: poppins.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16)),
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                          Text('Rp ${data['price']}',
                              style: poppins.copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 16))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                  '${data['qty']} item | ${data['distance']} km',
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: outline)),
                              const SizedBox(width: 10),
                            ],
                          ),
                          Text('Dikirim ke alamat',
                              style: poppins.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: outline))
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          orderButtonMaker(context, 'kasih Rating', primary2,
                              color: primary4,
                              route: InputRating(data: orderHistory)),
                          orderButtonMaker(context, 'Pesan Lagi', primary4)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    ],
  );
}
