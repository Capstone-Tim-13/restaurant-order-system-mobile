import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/logic/provider_handler.dart';
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
  final List<Map<String, dynamic>> dataBerlangsung = [];
  final List<Map<String, dynamic>> dataRiwayat = [];
  final List<Map<String, dynamic>> dataDibatalkan = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await dio.get(
          'https://656ede2c6529ec1c6236d00a.mockapi.io/api/pesanan/pesanan');

      if (response.statusCode == 200) {
        final List<dynamic> dataList = response.data;
        final List<Map<String, dynamic>> data =
            List<Map<String, dynamic>>.from(dataList);

        // Clear existing data
        dataBerlangsung.clear();
        dataRiwayat.clear();
        dataDibatalkan.clear();

        // Group data by statusPesanan
        for (final Map<String, dynamic> item in data) {
          final String statusPesanan = item['orderStatus'];

          if (statusPesanan == 'berlangsung') {
            setState(() {
              dataBerlangsung.add(item);
              print(dataBerlangsung);
            });
          } else if (statusPesanan == 'riwayat') {
            setState(() {
              dataRiwayat.add(item);
              print(dataRiwayat);
            });
          } else if (statusPesanan == 'dibatalkan') {
            setState(() {
              dataDibatalkan.add(item);
              print(dataDibatalkan);
            });
          }
        }
      } else {
        // Handle other status codes if needed
        throw Exception('Failed to load data');
      }
    } catch (error) {
      // Handle Dio errors
      throw Exception('Failed to load data: $error');
    }
  }

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
              text: 'Dibatalkan',
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
                itemCount: dataBerlangsung.length,
                // itemCount: isBerlangsungSelected
                //     ? dataBerlangsung.length
                //     : (isRiwayatSelected
                //         ? dataRiwayat.length
                //         : dataDibatalkan.length),
                itemBuilder: ((BuildContext context, index) {
                  return ongoingOrder(context, dataBerlangsung[index]);
                }),
              )),
              SizedBox(
                  child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: dataRiwayat.length,
                // itemCount:
                //     isBerlangsungSelected ? 5 : (isRiwayatSelected ? 4 : 8),
                itemBuilder: ((BuildContext context, index) {
                  return historyOrder(context, dataRiwayat[index]);
                }),
              )),
              SizedBox(
                  child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: dataDibatalkan.length,
                // itemCount:
                //     isBerlangsungSelected ? 5 : (isRiwayatSelected ? 4 : 8),
                itemBuilder: ((BuildContext context, index) {
                  return cancelOrder(context, dataDibatalkan[index]);
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
        Navigator.push(context,
            PageTransition(child: route, type: PageTransitionType.fade));
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
