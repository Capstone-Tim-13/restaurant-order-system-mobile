import 'package:capstone_restaurant/logic/profil/address_logic.dart';
import 'package:capstone_restaurant/pages/profile/add_address_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AddressPage extends StatefulWidget {
  final bool isRebuild;
  const AddressPage({super.key, required this.isRebuild});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  List currentAddressList = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      currentAddressList = savedAddress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      body: addressListPage(),
    );
  }

  showAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/images/icons/backButton.png'),
          ),
          const SizedBox(width: 8),
          Text(
            "Atur alamat pengiriman",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget addressListPage() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 14, right: 19, top: 34),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Daftar Alamat',
                  style: poppins.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () async {
                    final result = await Navigator.push(
                        context,
                        PageTransition(
                            child: const AddAddress(),
                            type: PageTransitionType.rightToLeft));
                    if (result != null) {
                      setState(() {
                        currentAddressList = result;
                      });
                    }
                    debugPrint('Tambah alamat tertekan');
                  },
                  child: Text(
                    '+ Tambah Alamat',
                    style: poppins.copyWith(color: primary1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 23),
            SizedBox(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: currentAddressList.length,
                itemBuilder: (context, index) {
                  return showAddressList(index, currentAddressList[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showAddressList(index, data) {
    String title = data[0];
    String name = data[1];
    String phone = data[2];
    String address = data[3];
    String note = data[4];
    return GestureDetector(
      onTap: () {
        debugPrint('address $title tertekan');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 24),
        decoration:
            homePageMenu.copyWith(borderRadius: BorderRadius.circular(10)),
        child: Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/icons/home2.png',
                      width: 17,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      title,
                      style: poppins.copyWith(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    threeDots(index),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '$name - $phone',
                      style: poppins.copyWith(
                          fontSize: 13, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  note,
                  style: poppins.copyWith(fontSize: 11),
                ),
                const SizedBox(height: 8),
                Text(
                  address,
                  style: poppins.copyWith(fontSize: 13, color: outline),
                ),
              ],
            )),
      ),
    );
  }

  Widget threeDots(idx) {
    return PopupMenuButton(
      surfaceTintColor: primary4,
      iconSize: 20,
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text(
            'Select address',
            style: poppins.copyWith(fontSize: 13),
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Text(
            'Edit address',
            style: poppins.copyWith(fontSize: 13),
          ),
        ),
      ],
      onSelected: (value) async {
        switch (value) {
          case 1:
            setState(() {
              defaultAddress = idx;
            });
            widget.isRebuild ? Navigator.pop(context, idx) : null;
            debugPrint('address ${currentAddressList[idx]}');
            debugPrint('address $idx');
            debugPrint(findAddressIndex('www').toString());
        }
      },
    );
  }
}
