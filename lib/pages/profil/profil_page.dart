//Delia
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 22, top: 22, right: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 91,
                  height: 91,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/Avatarprofile.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hydre',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'balbalee@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '+123 456 789',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/Editprofile.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Akun saya',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 15),
                buildProfileItem('Profile Saya', 'assets/images/Profile.png',
                    'Ubah informasi akun saya'),
                const SizedBox(height: 10),
                const Divider(),
                buildProfileItem('Ubah Password', 'assets/images/Password.png',
                    'Ubah password saya'),
                const SizedBox(height: 10),
                const Divider(),
                buildProfileItem('Metode Pembayaran',
                    'assets/images/Metode.png', 'Tambahkan metode pembayaran'),
                const SizedBox(height: 10),
                const Divider(),
                buildProfileItem('Lokasi', 'assets/images/Location.png',
                    'Atur alamat pengiriman'),
                const SizedBox(height: 10),
                const Divider(),
                buildProfileItem(
                    'Customer Service',
                    'assets/images/Customer.png',
                    'Hubungi kami jika ada masalah'),
                const SizedBox(height: 10),
                const Divider(),
                buildProfileItem('Favorit', 'assets/images/Favorite.png',
                    'Lihat menu favorit saya'),
                const Divider(),
              ],
            ),
            const SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lainnya',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 15),
                buildProfileItem(
                  'Beri rating untuk kami',
                  'assets/images/Rating.png',
                  'Ubah informasi akun saya',
                ),
                const SizedBox(height: 10),
                const Divider(),
                buildProfileItem(
                  'FAQ',
                  'assets/images/Faqcircle.png',
                  'frequently asked question',
                ),
                const SizedBox(height: 10),
                const Divider(),
                buildLogoutItem(),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileItem(String title, String imagePath, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(imagePath, width: 24, height: 24),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize
                .min, // Ensure the Column takes minimum vertical space
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset('assets/images/Rightcircle.png', width: 24, height: 24),
        ],
      ),
    );
  }

  Widget buildLogoutItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/Logout.png',
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 16),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Keluar',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset(
            'assets/images/Rightcircle.png',
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget showAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      title: DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          color: Color.fromARGB(255, 7, 7, 7),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/images/Leftcircle.png'),
            ),
            const SizedBox(width: 8),
            const Text(
              'Profile Saya',
            ),
          ],
        ),
      ),
    );
  }
}
