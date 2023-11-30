import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List isUnread = [true, true, true, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      body: notificationPage(),
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
            "Notifikasi",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget notificationPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 22),
          child: Text(
            'Terbaru',
            style: poppins.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ),
        const SizedBox(height: 16),
        showNotification()
      ],
    );
  }

  Widget showNotification() {
    return Expanded(
        child: ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: isUnread.length,
      itemBuilder: ((BuildContext context, index) {
        return notificationMaker(isUnread[index]);
      }),
    ));
  }

  Widget notificationMaker(unread) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(color: outline, width: 0.5),
                bottom: BorderSide(color: outline, width: 0.5))),
        height: 108,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 17),
                  child: Image.asset(
                    'assets/images/icons/checklist.png',
                    width: 33,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13, top: 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${userData[0]}, Pesananmu sudah sampai!',
                        style: poppins.copyWith(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Text('Selamat menikmati makanannya ya!',
                          style: poppins.copyWith(fontSize: 14)),
                      const SizedBox(height: 3),
                      Text('Hari ini pukul 14.13 WIB ',
                          style:
                              poppins.copyWith(fontSize: 12, color: outline)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18, top: 7),
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                    unread
                        ? 'assets/images/icons/dots.png'
                        : 'assets/images/icons/dotsT.png',
                    width: 17),
              ),
            )
          ],
        ));
  }
}
