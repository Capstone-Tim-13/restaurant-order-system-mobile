import 'package:flutter/material.dart';

class AlamatWidget extends StatelessWidget {
  final String namaTempat;
  final String nama;
  final String nomorTelepon;
  final String detailLokasi;
  final String alamatLengkap;

  AlamatWidget({
    required this.namaTempat,
    required this.nama,
    required this.nomorTelepon,
    required this.detailLokasi,
    required this.alamatLengkap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.0),
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/icons/home2.png',
                width: 19,
                height: 19,
              ),
              SizedBox(width: 8),
              Text(namaTempat, style: TextStyle(fontWeight: FontWeight.bold)),
              Spacer(),
              Icon(Icons.more_vert, color: Color(0xFF783525)),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(nama, style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(Icons.horizontal_rule),
              Text(nomorTelepon, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 8),
          Text(detailLokasi),
          SizedBox(height: 8),
          Text(alamatLengkap, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

class AturAlamat extends StatefulWidget {
  const AturAlamat({Key? key}) : super(key: key);

  @override
  State<AturAlamat> createState() => _AturAlamatState();
}

class _AturAlamatState extends State<AturAlamat> {
  void navigateBack() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 51.0, left: 21.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: navigateBack,
                  child: Icon(
                    Icons.arrow_circle_left_sharp,
                    color: Color(0xFF783525),
                  ),
                ),
                SizedBox(width: 8),
                Text('Atur Alamat Pengiriman',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ],
            ),
          ),
          SizedBox(height: 24),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 21.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Daftar Alamat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black)),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.add, color: Color(0xFFE25E3E)),
                            SizedBox(width: 5),
                            Text(
                              'Tambah Alamat',
                              style: TextStyle(
                                color: Color(0xFFE25E3E),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 21.0),
              children: [
                AlamatWidget(
                  namaTempat: 'My Home',
                  nama: 'Balbalee',
                  nomorTelepon: '0839874456984',
                  detailLokasi: 'Pager pelangi sebelah pager item ya pak',
                  alamatLengkap:
                      'Jl. in aja dulu III, Blok mana lagi 1 E, No.666, Tanah kusir,Depok,Jawa barat,08395,Indonesia',
                ),
                AlamatWidget(
                  namaTempat: 'Office',
                  nama: 'Oryngon',
                  nomorTelepon: '08458697543',
                  detailLokasi: 'Di taro di post satpam aja ya pak',
                  alamatLengkap:
                      'Jl. besar raya 5, kecamatan sukarela, Cakung, Jakarta Timur, 127846, Indonesia',
                ),
                AlamatWidget(
                  namaTempat: 'Kampus',
                  nama: 'Balbalee',
                  nomorTelepon: '0839874456984',
                  detailLokasi: 'Seberang Alfadidi',
                  alamatLengkap:
                      'Jl. in aja dulu III, Blok mana lagi 1 E, No. 666, Tanah kusir, Depok, Jawa Barat, 08395, Indoensia',
                ),
                AlamatWidget(
                  namaTempat: 'Kost',
                  nama: 'Balbalee',
                  nomorTelepon: '0839874456984',
                  detailLokasi: 'No 42 sebelah no 43 ya pak',
                  alamatLengkap:
                      'Jl. in aja dulu III, Blok mana lagi 1 E, No. 666, Tanah kusir, Depok, Jawa Barat, 08395, Indoensia',
                ),
                // Tambahkan widget AlamatWidget lainnya sesuai kebutuhan
              ],
            ),
          ),
        ],
      ),
    );
  }
}
