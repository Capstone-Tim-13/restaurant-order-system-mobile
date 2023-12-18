import 'package:capstone_restaurant/logic/provider_handler.dart';
import 'package:capstone_restaurant/pages/order/order_page.dart';
import 'package:capstone_restaurant/pages/order/order_status.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:capstone_restaurant/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget ongoingOrder(context, data) {
  final menuProvider = Provider.of<MenuDataProvider>(context, listen: false);
  return FutureBuilder(
      future: menuProvider.getMenuById(data['order_items'][0]['menuId']),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // print('waiting');
          return Center(
              child: CircularProgressIndicator(
            color: primary4,
            strokeWidth: 6,
          ));
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          Map foodData = snapshot.data!;
          return Container(
              margin: const EdgeInsets.only(bottom: 13, left: 16, right: 16),
              decoration: BoxDecoration(
                  color: primary2,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 6, spreadRadius: 2)
                  ]),
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 120,
                        width: MediaQuery.of(context).size.width - 32,
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
                            '30 Min',
                            style:
                                poppins.copyWith(fontSize: 16, color: primary2),
                          )),
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
                                SizedBox(
                                  width: 165,
                                  child: Text(foodData['name'],
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: poppins.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16)),
                                ),
                              ],
                            ),
                            Text(formatCurrency(data['totalPrice']),
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
                                    '${data['order_items'].length} item | 4 km',
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
                            orderButtonMaker(
                                context, 'Lacak status pesanan', primary2,
                                color: primary4,
                                route: OrderStatus(
                                  dataFromAPI: true,
                                  data: data,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ));
        }
      });
}
