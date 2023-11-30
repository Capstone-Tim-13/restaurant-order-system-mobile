import 'package:capstone_restaurant/pages/order/order_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

Widget cancelOrder(context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 8, left: 16),
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            '12 September 2023',
            style: poppins.copyWith(fontSize: 15, color: outline),
          ),
        ),
      ),
      const SizedBox(height: 8),
      Container(
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
                  Image.asset(
                      'assets/images/home/orderPage/cancel/cancelMenu.png'),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 165,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Tuna Grill, Tofu Salmon pedas dan nikmat',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: poppins.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16)),
                                  Text('7 item | 4 km',
                                      style: poppins.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: outline)),
                                  const SizedBox(height: 8),
                                ],
                              ),
                            )
                          ],
                        ),
                        Text('Rp 40.000',
                            style: poppins.copyWith(
                                fontWeight: FontWeight.w500, fontSize: 16)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 165,
                          child: Text(
                              'Dibatalkan: mau order yang lain, salah order bla bla bla',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: poppins.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: outline)),
                        ),
                        orderButtonMaker(context, 'Dibatalkan', outline, color: bright)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    ],
  );
}
