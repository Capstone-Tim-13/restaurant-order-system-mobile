import 'package:capstone_restaurant/data.dart';
import 'package:capstone_restaurant/style.dart';
import 'package:capstone_restaurant/widgets.dart';
import 'package:flutter/material.dart';

class AddAddress extends StatefulWidget {
  final dynamic title;
  final dynamic tag;
  final dynamic name;
  final dynamic phone;
  final dynamic address;
  final dynamic note;
  const AddAddress(
      {super.key,
      this.tag,
      this.name,
      this.phone,
      this.address,
      this.note,
      this.title});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  TextEditingController detailLokasi = TextEditingController();
  TextEditingController namaLengkap = TextEditingController();
  TextEditingController noHp = TextEditingController();
  TextEditingController tag = TextEditingController();
  TextEditingController patokan = TextEditingController();
  bool isMain = false;
  List newAddress = [];

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
      resizeToAvoidBottomInset: false,
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
            widget.title ?? "Alamat Baru",
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
          fieldMaker('Detail Lokasi',
              widget.address ?? 'Cth. blok, No.rumah, patokan', detailLokasi,
              prefilled: widget.address),
          fieldMaker('Nama Lengkap', widget.name ?? 'Masukkan nama lengkap',
              namaLengkap,
              prefilled: widget.name),
          fieldMaker(
              'No. Handphone', widget.phone ?? 'Masukan no. Handphone', noHp,
              prefilled: widget.phone),
          fieldMaker('Tandai lokasi sebagai',
              widget.tag ?? 'Cth, rumah, kantor, kampus', tag,
              prefilled: widget.tag),
          fieldMaker('Patokan', widget.note ?? 'Cth, warna rumah, warna pager',
              patokan,
              prefilled: widget.note),
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
                      debugPrint(isMain.toString());
                    });
                  })
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              savedAddress.add([
                detailLokasi.text,
                namaLengkap.text,
                noHp.text,
                tag.text,
                patokan.text
              ]);
              if (isMain) {
                setState(() {
                  defaultAddress = savedAddress.length - 1;
                  debugPrint(defaultAddress.toString());
                });
              }

              Navigator.pop(context, savedAddress);
              debugPrint(savedAddress.toString());
              debugPrint(defaultAddress.toString());
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
