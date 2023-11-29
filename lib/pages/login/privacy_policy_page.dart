import 'package:capstone_restaurant/style.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(context),
      body: privacyPolicyPage(),
    );
  }

  showAppBar(context) {
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
            "Ketentuan & Kebijakan Privasi",
            style: poppins.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 18), // Ganti warna teks "Lupa Password"
          ),
        ],
      ),
    );
  }

  Widget privacyPolicyPage() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 35),
        child: Column(
          children: [
            RichText(
                text: TextSpan(
                    text: 'Tanggal Terakhir Diperbarui: 22 November 2023\n\n',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                    children: <TextSpan>[
                  TextSpan(
                      text:
                          'Selamat datang di Aplikasi Alta-Resto. Kami sangat menghargai kepercayaan Anda dalam menggunakan aplikasi kami. Dokumen ini menjelaskan bagaimana kami mengumpulkan, menggunakan, dan melindungi informasi pribadi Anda. Dengan menggunakan aplikasi ini, Anda menyetujui kebijakan privasi berikut:\n\n',
                      style: poppins),
                  TextSpan(
                    text:
                        '1. Informasi yang Kami Kumpulkan\n1.1 Informasi Pribadi:',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                      text:
                          'Saat Anda menggunakan aplikasi Alta-Resto, kami dapat mengumpulkan informasi pribadi seperti nama, alamat email, nomor telepon, dan alamat pengiriman.\n\n',
                      style: poppins),
                  TextSpan(
                    text: '1.2 Informasi Transaksional:\n',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                      text:
                          'Kami dapat mengumpulkan informasi terkait transaksi, seperti detail pesanan dan riwayat pembelian.\n\n',
                      style: poppins),
                  TextSpan(
                    text: '1.3 Informasi Log:\n',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                      text:
                          'Kami dapat mengumpulkan informasi log, termasuk alamat IP, jenis perangkat, dan aktivitas pengguna.\n\n',
                      style: poppins),
                  TextSpan(
                    text: '2. Penggunaan Informasi\n2.1 Penyediaan Layanan: ',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                      text:
                          'Informasi yang dikumpulkan digunakan untuk menyediakan layanan, memproses pesanan, dan mengirimkan notifikasi terkait transaksi.\n\n',
                      style: poppins),
                  TextSpan(
                    text: '2.2 Pengembangan Aplikasi:\n',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                      text:
                          'Kami dapat menggunakan informasi untuk mengembangkan, mengamankan, dan meningkatkan fungsionalitas aplikasi.\n\n',
                      style: poppins),
                  TextSpan(
                    text: '2.3 Pemasaran:\n',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                      text:
                          'Dengan izin Anda, kami dapat menggunakan informasi untuk mengirimkan penawaran, promosi, atau informasi lain terkait layanan kami.\n\n',
                      style: poppins),
                  TextSpan(
                    text:
                        '3. Bagikan Informasi dengan Pihak Ketiga\n3.1 Mitigasi Pihak Ketiga:\n',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                      text:
                          'Kami dapat berbagi informasi dengan mitra restoran, penyedia layanan pengiriman, atau pihak ketiga lainnya untuk memproses pesanan dan menyediakan layanan terkait.\n\n',
                      style: poppins),
                  TextSpan(
                    text:
                        '4. Keamanan dan Penyimpanan\n4.1 Keamanan Informasi:\n',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                      text:
                          'Kami mengambil langkah-langkah keamanan yang wajar untuk melindungi informasi pribadi Anda.\n\n',
                      style: poppins),
                  TextSpan(
                    text: '4.2 Penyimpanan Informasi:\n',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                      text:
                          'Informasi pribadi akan disimpan selama diperlukan untuk tujuan yang dijelaskan dalam kebijakan ini.\n\n',
                      style: poppins),
                  TextSpan(
                    text:
                        '5. Hak dan Kontrol Pengguna\n5.1 Akses dan Perbarui: \n',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                      text:
                          'Anda dapat mengakses dan memperbarui informasi pribadi Anda melalui aplikasi..\n\n',
                      style: poppins),
                  TextSpan(
                    text: '5.2 Pilihan Pengguna:\n',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                      text:
                          'Anda memiliki pilihan untuk menerima atau menolak pemasaran dari kami.\n\n',
                      style: poppins),
                  TextSpan(
                    text:
                        '6. Perubahan pada Kebijakan Privasi\n6.1 Pembaruan Kebijakan:\n',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                      text:
                          'Kebijakan ini dapat diperbarui dari waktu ke waktu. Setiap perubahan akan diumumkan dalam aplikasi.\n\n',
                      style: poppins),
                  TextSpan(
                    text: '7. Kontak Kami\n7.1 Hubungi Kami:\n',
                    style: poppins.copyWith(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                      text:
                          'Jika Anda memiliki pertanyaan atau keprihatinan terkait kebijakan privasi ini, silakan hubungi kami belalui layanan kami dibawah ini:\n\n',
                      style: poppins),
                  TextSpan(
                      text: 'Jam Kerja:',
                      style: poppins.copyWith(fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: ' Senin - Jumat, pukul 08.00 - 16.00 WIB\n\n',
                      style: poppins),
                  TextSpan(
                      text: 'Telepon:',
                      style: poppins.copyWith(fontWeight: FontWeight.w500)),
                  TextSpan(text: ' 22112023\n\n', style: poppins),
                  TextSpan(
                      text: 'Email:',
                      style: poppins.copyWith(fontWeight: FontWeight.w500)),
                  TextSpan(text: ' help@altaresto.id\n\n', style: poppins),
                  TextSpan(
                      text:
                          'Terima kasih telah menggunakan Aplikasi Alta-Resto.\n\n',
                      style: poppins),
                  TextSpan(
                      text: 'Alta-Resto:\n',
                      style: poppins.copyWith(fontWeight: FontWeight.w500)),
                  TextSpan(
                      text:
                          'Crown Palace Blok D No.15 JL Prof Dr Soepomo No. 231, RT/RW 0077/001, Menteng Dalam, Tebet, Jakarta Selatan',
                      style: poppins),
                ]))
          ],
        ),
      ),
    );
  }
}
