import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/pages/help/help_page.dart';
import 'package:capstone_restaurant/pages/home/home.dart';
import 'package:page_transition/page_transition.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({super.key});

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {

  @override
  void initState() {
    super.initState();
    orderStatusDemo();
  }

  Future<void> orderStatusDemo() async {
    for (int i = 0; i < orderStatusEvents.length; i++) {
      await Future.delayed(const Duration(seconds: 2));
      setState(() {
        orderStatusEvents[i][2] = !orderStatusEvents[i][2];
      });

      // if (i == orderStatusEvents.length - 1) {
      //   await Future.delayed(const Duration(seconds: 2));
      //   setState(() {
      //     for (int j = 0; j < orderStatusEvents.length; j++) {
      //       orderStatusEvents[j][2] = false;
      //     }
      //   });
      //   orderStatusDemo();
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: moreBright,
        appBar: showAppBar(),
        body: orderStatusPage());
  }

  showAppBar() {
    return AppBar(
      backgroundColor: moreBright,
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Home(setIdx: 1)),
                  (route) => false);
            },
            child: Image.asset('assets/images/icons/backButton.png'),
          ),
          const SizedBox(width: 8),
          Text(
            "Status Pesanan Saya",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget orderStatusPage() {
    return Stack(
      children: [
        section1(),
        section2(),
      ],
    );
  }

  Widget section1() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 37, right: 37, bottom: 37),
          child: Column(
            children: [
              Image.asset('assets/images/order/confirm3.png'),
              Text(
                'Estimasi waktu pengiriman : 30 menit',
                style: poppins.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 50, top: 15, right: 30),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  spreadRadius: 1,
                  offset: Offset(0, -5),
                )
              ],
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(56),
              ),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: orderStatusEvents.length,
              padding: const EdgeInsets.only(bottom: 100),
              itemBuilder: (BuildContext context, index) {
                return statusIndicator(orderStatusEvents[index]);
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget section2() {
    return SizedBox(
      child: showOrderList(),
    );
  }

  // ----------------------------------------------------------------

  Widget statusIndicator(data) {
    var isFirst = data[0];
    var isLast = data[1];
    var isPast = data[2];
    var title = data[3];
    var subtitle = data[4];
    var img = data[5];
    return SizedBox(
      height: 85,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(color: isPast ? primary1 : surface),
        indicatorStyle: IndicatorStyle(color: isPast ? primary1 : surface),
        endChild: eventCard(title, subtitle, img, isPast),
      ),
    );
  }

  Widget eventCard(title, subtitle, img, isPast) {
    return Container(
      margin: const EdgeInsets.only(left: 19, top: 23),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: isPast ? primary4 : surface,
            child: Image.asset(
              img,
              width: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: isPast ? Colors.black : outline),
                ),
                Text(
                  subtitle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: isPast ? outline : surface),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ----------------------------------------------------------------

  Widget showOrderList() {
    return DraggableScrollableSheet(
      minChildSize: 0.1,
      maxChildSize: 0.9,
      initialChildSize: 0.1,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                spreadRadius: 1,
                offset: Offset(0, -5),
              )
            ],
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(56),
            ),
          ),
          child: Stack(children: [
            Container(
                margin: const EdgeInsets.only(top: 165),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: 5,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: ((BuildContext context, index) {
                            return listOrderMaker();
                          }),
                        ),
                        calculatePrice('Subtotal', 'xxxxx'),
                        calculatePrice('Ongkir', 'xxxxx'),
                        calculatePrice('Biaya lain-lain', 'xxxxx'),
                        calculatePrice('Voucher Promo', 'xxxxx'),
                        calculatePrice('Diskon Ongkir', 'xxxxx'),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(),
                        ),
                        calculatePrice('Total Pembayaran', 'xxxxx'),
                        const SizedBox(height: 22),
                      ],
                    ))),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 29, right: 30),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: Align(
                          alignment: Alignment.center,
                          child: Image.asset('assets/images/login/handle.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 21),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Daftar Pesanan',
                            style: poppins.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: const HelpPage(route: false),
                                      type: PageTransitionType.fade));
                            },
                            child: CircleAvatar(
                              backgroundColor: primary4,
                              child: Image.asset(
                                'assets/images/icons/pesanan.png',
                                width: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 48),
                    Text(
                      'Pesanan mu',
                      style: poppins.copyWith(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        );
      },
    );
  }

  Widget listOrderMaker() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 29, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Kentang Goreng',
                    style: poppins.copyWith(
                        fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  const Spacer(),
                  Text(
                    'Rp 34.000',
                    style: poppins.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: primary4),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              SizedBox(
                width: 217,
                height: 45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Catatan: ',
                                style: poppins.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: outline)),
                            TextSpan(
                                text:
                                    'iaosjmjgilaslig iogna niaowngoin12 1ion 1n  fawfa gsad asfa agf s',
                                style: poppins.copyWith(color: outline)),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 13, right: 13, bottom: 16),
          child: Divider(),
        )
      ],
    );
  }

  Widget calculatePrice(title, price) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    poppins.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              Text(
                price,
                style:
                    poppins.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
