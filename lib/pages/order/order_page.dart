import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/pages/order/cancel_order_page.dart';
import 'package:capstone_restaurant/pages/order/history_order_page.dart';
import 'package:capstone_restaurant/pages/order/ongoing_order_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool isBerlangsungSelected = true;
  bool isRiwayatSelected = false;
  bool isDibatalkanSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: orderPage(),
    );
  }

  showAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      title: Row(
        children: [
          Text(
            "Pesanan",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
      bottom: TabBar(
          splashFactory: NoSplash.splashFactory,
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            return states.contains(MaterialState.focused)
                ? null
                : Colors.transparent;
          }),
          indicatorColor: primary4,
          labelColor: primary4,
          labelStyle:
              poppins.copyWith(fontSize: 15, fontWeight: FontWeight.w500),
          tabs: const [
            Tab(
              text: 'Berlangsung',
            ),
            Tab(
              text: 'Riwayat',
            ),
            Tab(
              text: 'Dibatalakn',
            ),
          ]),
    );
  }

  Widget orderPage() {
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: showAppBar(),
          body: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: TabBarView(children: [
              SizedBox(
                  child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount:
                    isBerlangsungSelected ? 5 : (isRiwayatSelected ? 4 : 8),
                itemBuilder: ((BuildContext context, index) {
                  return ongoingOrder(context);
                }),
              )),
              SizedBox(
                  child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount:
                    isBerlangsungSelected ? 5 : (isRiwayatSelected ? 4 : 8),
                itemBuilder: ((BuildContext context, index) {
                  return historyOrder(context, orderHistory);
                }),
              )),
              SizedBox(
                  child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount:
                    isBerlangsungSelected ? 5 : (isRiwayatSelected ? 4 : 8),
                itemBuilder: ((BuildContext context, index) {
                  return cancelOrder(context);
                }),
              )),
            ]),
          ),
        ));
  }
}

Widget orderButtonMaker(context, title, titleColor, {color, route}) {
  return GestureDetector(
    onTap: () {
      if (route != null && title != 'Dibatalkan') {
        Navigator.push(context, PageTransition(
                child: route,
                type: PageTransitionType.fade));
      }
      debugPrint('$title tertekan');
    },
    child: Container(
      decoration: BoxDecoration(
        color: color ?? Colors.transparent,
        borderRadius: BorderRadius.circular(37),
        border: color == null
            ? Border.all(color: primary4, strokeAlign: 1)
            : Border.all(color: Colors.transparent, strokeAlign: 0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Center(
          child: Text(
            title,
            style: poppins.copyWith(
                fontWeight: FontWeight.w500, fontSize: 13, color: titleColor),
          ),
        ),
      ),
    ),
  );
}
