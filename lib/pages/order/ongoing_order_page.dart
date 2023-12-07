import 'package:capstone_restaurant/pages/order/order_page.dart';
import 'package:capstone_restaurant/pages/order/order_status.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

Widget ongoingOrder(context, data) {
  return Container(
      margin: const EdgeInsets.only(bottom: 13, left: 16, right: 16),
      decoration: BoxDecoration(
          color: primary2,
          borderRadius: BorderRadius.circular(22),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 6, spreadRadius: 2)
          ]),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                  'assets/images/home/orderPage/ongoing/ongoingMenu.png'),
              Positioned(
                  left: 15,
                  bottom: 9,
                  child: Text(
                    '30 Min',
                    style: poppins.copyWith(fontSize: 16, color: primary2),
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
                          child: Text(data['name'],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: poppins.copyWith(
                                  fontWeight: FontWeight.w500, fontSize: 16)),
                        ),
                      ],
                    ),
                    Text('Rp 25.000',
                        style: poppins.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 16))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('3 item | 4 km',
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    orderButtonMaker(context, 'Lacak status pesanan', primary2,
                        color: primary4, route: const OrderStatus())
                  ],
                ),
              ],
            ),
          ),
        ],
      ));
}
