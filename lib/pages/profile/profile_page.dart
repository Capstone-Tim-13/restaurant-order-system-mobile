// Delia

import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/pages/profile/my_account_page.dart';
import 'package:capstone_restaurant/pages/profile/profile_page.dart';
import 'package:capstone_restaurant/pages/login/login_page.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      body: accPage(),
    );
  }

  showAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      title: Row(
        children: [
          Text(
            "Profil Saya",
            style: poppins.copyWith(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget accPage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 20, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                            'assets/images/home/accPage/avatar.png')),
                    const SizedBox(width: 13),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Hydre',
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20)),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AccPage()));
                                  debugPrint('edit tertekan');
                                },
                                child: Image.asset(
                                    'assets/images/icons/edit.png',
                                    width: 20),
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Text('Balbalee@gmail.com',
                              style: poppins.copyWith(
                                  color: outline, fontSize: 14)),
                          Text('+62666666666',
                              style: poppins.copyWith(
                                  color: outline, fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 33, top: 35, bottom: 46),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Akun saya',
                  style: poppins.copyWith(fontSize: 16, color: outline),
                ),
                SizedBox(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: accMenu.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      String title = accMenu[index][0];
                      String subtitle = accMenu[index][1];
                      String img = accMenu[index][2];
                      Widget route = accMenu[index][3];
                      return accMenuMaker(context, title, subtitle, img, route);
                    },
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Lainnya',
                  style: poppins.copyWith(fontSize: 16, color: outline),
                ),
                SizedBox(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: accExtraMenu.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      String title = accExtraMenu[index][0];
                      String subtitle = accExtraMenu[index][1];
                      String img = accExtraMenu[index][2];
                      Widget route = accExtraMenu[index][3];
                      return accMenuMaker(context, title, subtitle, img, route);
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: outline))),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/icons/accPage/logout.png',
                        width: 24,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Keluar',
                                    style: poppins.copyWith(fontSize: 16)),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/login');

                                    debugPrint('Keluar tertekan');
                                  },
                                  child: RotatedBox(
                                    quarterTurns: 90,
                                    child: Image.asset(
                                        'assets/images/icons/backButton.png',
                                        opacity:
                                            const AlwaysStoppedAnimation(.8)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
                // const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget accMenuMaker(context, title, subtitile, titleIcon, route) {
  return Container(
    decoration:
        BoxDecoration(border: Border(bottom: BorderSide(color: outline))),
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          titleIcon,
          width: 24,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(title, style: poppins.copyWith(fontSize: 16)),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => route));

                      debugPrint('$title tertekan');
                    },
                    child: RotatedBox(
                      quarterTurns: 90,
                      child: Image.asset('assets/images/icons/backButton.png',
                          opacity: const AlwaysStoppedAnimation(.8)),
                    ),
                  ),
                ],
              ),
              Text(subtitile, style: poppins.copyWith(fontSize: 14))
            ],
          ),
        )
      ],
    ),
  );
}
