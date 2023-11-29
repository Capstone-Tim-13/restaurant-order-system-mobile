import 'package:capstone_restaurant/style.dart';
import 'package:capstone_restaurant/widgets.dart';
import 'package:flutter/material.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  TextEditingController detailLokasi = TextEditingController();
  TextEditingController namaLengkap = TextEditingController();
  TextEditingController noHp = TextEditingController();
  TextEditingController tag = TextEditingController();
  bool isMain = false;

  @override
  void dispose() {
    detailLokasi.dispose();
    namaLengkap.dispose();
    noHp.dispose();
    tag.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      body: addAddressPage(),
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
            "Alamat Baru",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget addAddressPage() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 14, top: 32),
      child: Column(
        children: [
          fieldMaker(
              'Detail Lokasi', 'Cth. blok, No.rumah, patokan', detailLokasi),
          fieldMaker('Nama Lengkap', 'Masukkan nama lengkap', namaLengkap),
          fieldMaker('No. Handphone', 'Masukan no. Handphone', noHp),
          fieldMaker(
              'Tandai lokasi sebagai', 'Cth, rumah, kantor, kampus', tag),
          const SizedBox(height: 31),
          Row(
            children: [
              Text(
                'Jadikan alamat utama',
                style:
                    poppins.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              Switch(
                  value: isMain,
                  activeColor: primary4,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: bright,
                  onChanged: (bool value) {
                    setState(() {
                      isMain = !isMain;
                    });
                  })
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              debugPrint('Konfirmasi alamat');
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 80),
              decoration: BoxDecoration(
                color: primary4,
                borderRadius: BorderRadius.circular(37),
              ),
              width: 335,
              height: 48,
              child: Center(
                child: Text(
                  'Konfirmasi alamat',
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
}
