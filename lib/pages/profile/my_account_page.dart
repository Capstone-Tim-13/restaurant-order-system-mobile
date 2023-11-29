// Bima

import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class AccPage extends StatefulWidget {
  const AccPage({super.key});

  @override
  State<AccPage> createState() => _AccPageState();
}

class _AccPageState extends State<AccPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      body: profilePage(),
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
            "Profil Saya",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget profilePage() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              editAvatar(context);
              debugPrint('edit gambar tertekan');
            },
            child: Column(
              children: [
                const SizedBox(height: 21),
                const CircleAvatar(
                  radius: 60,
                  backgroundImage:
                      AssetImage('assets/images/home/accPage/avatar.png'),
                  foregroundImage: AssetImage('assets/images/icons/camera.png'),
                ),
                const SizedBox(height: 5),
                Text(
                  'Ganti Foto Profil',
                  style: poppins.copyWith(fontSize: 16, color: primary4),
                )
              ],
            ),
          ),
          const SizedBox(height: 33),
          fieldMaker('Nama*', 'Hydre'),
          fieldMaker('Email*', 'Balbalee@gmail.com'),
          fieldMaker('Nomor Hp*', '+62666666666'),
          fieldMaker('Tanggal lahir*', 'xxxxxxxx'),
          const SizedBox(height: 63),
          GestureDetector(
            onTap: () {
              debugPrint('Simapn tertekan');
            },
            child: Container(
              decoration: BoxDecoration(
                color: primary4,
                borderRadius: BorderRadius.circular(37),
              ),
              width: 335,
              height: 48,
              child: Center(
                child: Text(
                  'Simpan',
                  style: poppins.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: primary2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget fieldMaker(title, hint) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 40, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: poppins.copyWith(fontSize: 16),
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
                hintText: hint, hintStyle: poppins.copyWith(color: outline)),
          )
        ],
      ),
    );
  }

  Future editAvatar(context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: primary2,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(56)),
        ),
        builder: ((context) {
          return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 350,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ganti foto Profile',
                      style: poppins.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 24),
                    editAvatarOpt('assets/images/home/accPage/galery.png',
                        'Ambil dari galeri'),
                    editAvatarOpt(
                        'assets/images/home/accPage/photo.png', 'Ambil foto'),
                    editAvatarOpt(
                        'assets/images/home/accPage/delete.png', 'Hapus foto'),
                  ],
                ),
              ));
        }));
  }

  Widget editAvatarOpt(img, title) {
    return GestureDetector(
      onTap: () {
        debugPrint('$title tertekan');
      },
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                img,
                width: 28,
              ),
              const SizedBox(width: 16),
              Text(
                title,
                style: poppins.copyWith(fontSize: 16),
              )
            ],
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
