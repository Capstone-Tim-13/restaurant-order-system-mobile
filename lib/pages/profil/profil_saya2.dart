import 'package:flutter/material.dart';

class ProfilSaya extends StatefulWidget {
  const ProfilSaya({Key? key}) : super(key: key);

  @override
  _ProfilSayaState createState() => _ProfilSayaState();
}

class _ProfilSayaState extends State<ProfilSaya> {
  TextEditingController _namaController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _noHpController = TextEditingController();
  TextEditingController _tanggalLahirController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  // Navigator.pushReplacementNamed(context, '/home');
                },
                child: Image.asset(
                  'assets/images/ Left Circle 1.png',
                  width: 30,
                  height: 30,
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              'Profil Saya',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 8),
          Center(
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 62.5,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  GestureDetector(
                    onTap: () {
                      _GantiFotoProfil();
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      width: 125.0,
                      height: 125.0,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white.withOpacity(0.5),
                        size: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Ganti Foto Profil',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: Color(0xFF783525),
            ),
          ),
          SizedBox(height: 33),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama*',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                TextField(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                  ),
                  controller: _namaController,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Nama Anda',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 17),
                Text(
                  'Email*',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                TextField(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                  ),
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: '@gmail.com',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 17),
                Text(
                  'Nomor Hp*',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                TextField(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                  ),
                  controller: _noHpController,
                  decoration: InputDecoration(
                    hintText: '+62...',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 17),
                Text(
                  'Tanggal lahir',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                TextField(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                  ),
                  controller: _tanggalLahirController,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Tanggal Lahir Anda',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 70),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                // logika untuk menyimpan data di sini
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF783525),
                onPrimary: Colors.white,
                minimumSize: Size(324, 49),
              ),
              child: Text(
                'Simpan',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  void _GantiFotoProfil() {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 283,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Ganti Foto Profile',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/Image 2.png',
                  width: 24,
                  height: 24,
                ),
                title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Ambil dari galeri',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Icon(
                       Icons.chevron_right,
                      color: Colors.black,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                  // logika untuk memilih gambar dari galeri
                },
              ),
              Divider(
                height: 20,
                color: Colors.grey,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/Camera 1.png',
                  width: 24,
                  height: 24,
                ),
                title: Text(
                  'Ambil Foto',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // logika untuk mengambil foto
                },
              ),
              Divider(
                height: 20,
                color: Colors.grey,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/Delete 2.png',
                  width: 24,
                  height: 24,
                ),
                title: Text(
                  'Hapus Foto',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // logika untuk menghapus foto
                },
              ),
            ],
          ),
        ),
      );
    },
  );
 }
}
//cek