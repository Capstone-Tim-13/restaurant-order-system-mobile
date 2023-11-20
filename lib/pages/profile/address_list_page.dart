import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/pages/profile/add_address_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class AddressList extends StatefulWidget {
  const AddressList({super.key});

  @override
  State<AddressList> createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddAddress()));
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
                itemCount: savedAddress.length,
                itemBuilder: (context, index) {
                  return showAddressList(
                      savedAddress[index][0],
                      savedAddress[index][1],
                      savedAddress[index][2],
                      savedAddress[index][3],
                      savedAddress[index][4],
                      index);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showAddressList(title, name, phone, address, note, index) {
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
                    // GestureDetector(
                    //   onTap: () {
                    //     debugPrint('edit address tertekan');
                    //   },
                    //   child: Image.asset(
                    //     'assets/images/icons/threeDots.png',
                    //     width: 3,
                    //   ),
                    // )
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
            Navigator.pop(context, idx);
            debugPrint('address ${savedAddress[idx]}');
        }
      },
    );
  }
}

//  SizedBox(
//                 width: 290,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'My home',
//                       style: poppins.copyWith(fontSize: 15),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       'Jl. in aja dulu III, Blok mana lagi 1 E, No. 666, Tanah kusir, Depok, Jawa Barat, 08395, Indoensia ijsalgjnlk algjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasjas ijsalgjnlk algjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasjas ijsalgjnlk algjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasjas ijsalgjnlk algjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasalgjnlk jasjas',
//                       maxLines: 3,
//                       overflow: TextOverflow.ellipsis,
//                       style: poppins.copyWith(fontSize: 13, color: outline),
//                     ),
//                   ],
//                 ),
//               )