import 'package:capstone_restaurant/pages/help/help_page.dart';
import 'package:capstone_restaurant/pages/order/payment_method_page.dart';
import 'package:capstone_restaurant/pages/profile/app_rating_page.dart';
import 'package:capstone_restaurant/pages/profile/change_password_page.dart';
import 'package:capstone_restaurant/pages/home/favorite_page.dart';
import 'package:capstone_restaurant/pages/profile/faq_page.dart';
import 'package:capstone_restaurant/pages/profile/my_account_page.dart';
import 'package:capstone_restaurant/pages/profile/address_page.dart';

List defaultPaymentMethod = [];
List<String> userData = [];
int defaultAddress = 0;

List searchHistory = [];

List savedAddress = [
  [
    'My home',
    'Balbalee',
    '0839874456984',
    'Jl. in aja dulu III, Blok mana lagi 1 E, No. 666, Tanah kusir, Depok, Jawa Barat, 08395, Indoensia',
    'Pager pelangi sebelah pager item ya pak'
  ],
  [
    'Office',
    'Oryngon',
    '08458697543',
    'Jl. besar raya 5, kecamatan sukarela, Cakung, Jakarta Timur, 127846, Indonesia',
    'Di taro di pos satpam aja ya pak'
  ],
  [
    'Kampus',
    'Balbalee',
    '0839874456984',
    'Jl. in aja dulu III, Blok mana lagi 1 E, No. 666, Tanah kusir, Depok, Jawa Barat, 08395, Indoensia',
    'Seberang Alfadidi'
  ],
  [
    'Kost',
    'Balbalee',
    '0839874456984',
    'Jl. in aja dulu III, Blok mana lagi 1 E, No. 666, Tanah kusir, Depok, Jawa Barat, 08395, Indoensia',
    'No 42 sebelah no 43 ya pak'
  ],
];

List catData = [
  ['Appetizer', 'assets/images/home/homePage/category/appetizer.png'],
  ['Dessert', 'assets/images/home/homePage/category/dessert.png'],
  ['Ala Carte', 'assets/images/home/homePage/category/alacarte.png'],
  ['Paket Hemat', 'assets/images/home/homePage/category/paket.png'],
  ['Minum', 'assets/images/home/homePage/category/minuman.png'],
  ['All Menu', 'assets/images/home/homePage/category/allmenu.png'],
];

List bannerImg = [
  'assets/images/home/homePage/banner/banner.png',
  'assets/images/home/homePage/banner/banner1.png',
  'assets/images/home/homePage/banner/banner2.png',
  'assets/images/home/homePage/banner/banner3.png',
  'assets/images/home/homePage/banner/banner4.png',
];

// ----------------------------

List accMenu = [
  [
    'Profil Saya',
    'Ubah informasi akun saya',
    'assets/images/icons/accPage/profil.png',
    const AccPage()
  ],
  [
    'Ubah Password',
    'Ubah password saya',
    'assets/images/icons/accPage/password.png',
    const ChangePassword()
  ],
  [
    'Metode Pembayaran',
    'Tambahkan metode pembayaran',
    'assets/images/icons/accPage/pembayaran.png',
    const PaymentMethod()
  ],
  [
    'Lokasi',
    'Atur alamat pengiriman',
    'assets/images/icons/accPage/location.png',
    const AddressPage(isRebuild: false)
  ],
  [
    'Customer Service',
    'Hubungi kami jika ada masalah',
    'assets/images/icons/accPage/cs.png',
    const HelpPage(route: false)
  ],
  [
    'Favorit',
    'Lihat menu favorit saya',
    'assets/images/icons/accPage/fav.png',
    const FavoriteMenu()
  ],
];

List accExtraMenu = [
  [
    'Beri Rating Untuk Kami',
    'Lihat menu favorit saya',
    'assets/images/icons/accPage/rating.png',
    const AppRating()
  ],
  [
    'FAQ',
    'Frequently Asked Question',
    'assets/images/icons/accPage/faq.png',
    const FAQPage()
  ],
];

// ----------------------------

List paymentEWallet = [
  ['assets/images/icons/payment/gopay.png', 'Gopay'],
  ['assets/images/icons/payment/dana.png', 'Dana'],
  ['assets/images/icons/payment/ovo.png', 'OVO'],
  ['assets/images/icons/payment/shopeepay.png', 'Shopee Pay'],
];

List paymentBank = [
  ['assets/images/icons/payment/bca.png', 'BCA'],
  ['assets/images/icons/payment/permata.png', 'Permata Bank'],
  ['assets/images/icons/payment/bri.png', 'BRI'],
  ['assets/images/icons/payment/mandiri.png', 'Bank Mandiri'],
  ['assets/images/icons/payment/cimb.png', 'CIMB Niaga'],
  ['assets/images/icons/payment/btn.png', 'Bank BTN'],
];

// ----------------------------

Map<String, dynamic> menuData = {
  'Appetizer': [
    [
      'Kentang Goreng',
      'Kentang goreng asin dengan saus pedas untuk cocolannya',
      '10.000',
      'assets/images/home/homePage/menubyCat/appetizer.png',
      4,
      '394'
    ],
    [
      'Kentang Goreng',
      'Kentang goreng asin dengan saus pedas untuk cocolannya',
      '10.000',
      'assets/images/home/homePage/menubyCat/appetizer.png',
      4,
      '394'
    ],
    [
      'Kentang Goreng',
      'Kentang goreng asin dengan saus pedas untuk cocolannya',
      '10.000',
      'assets/images/home/homePage/menubyCat/appetizer.png',
      4,
      '394'
    ],
    [
      'Kentang Goreng',
      'Kentang goreng asin dengan saus pedas untuk cocolannya',
      '10.000',
      'assets/images/home/homePage/menubyCat/appetizer.png',
      4,
      '394'
    ],
  ],
  'Dessert': [
    [
      'Donat Kentang',
      'Donat kentang yang dihiasi messes dan cokelat',
      '15.000',
      'assets/images/home/homePage/menubyCat/dessert.png',
      3,
      '200'
    ],
    [
      'Donat Kentang',
      'Donat kentang yang dihiasi messes dan cokelat',
      '15.000',
      'assets/images/home/homePage/menubyCat/dessert.png',
      3,
      '200'
    ],
    [
      'Donat Kentang',
      'Donat kentang yang dihiasi messes dan cokelat',
      '15.000',
      'assets/images/home/homePage/menubyCat/dessert.png',
      3,
      '200'
    ],
    [
      'Donat Kentang',
      'Donat kentang yang dihiasi messes dan cokelat',
      '15.000',
      'assets/images/home/homePage/menubyCat/dessert.png',
      3,
      '200'
    ],
  ],
  'Ala Carte': [
    [
      'Mie Goreng',
      'Mie goreng bumbu ala alta-resto, pasti kamu suka',
      '12.000',
      'assets/images/home/homePage/menubyCat/alacarte.png',
      3,
      '125'
    ],
    [
      'Mie Goreng',
      'Mie goreng bumbu ala alta-resto, pasti kamu suka',
      '12.000',
      'assets/images/home/homePage/menubyCat/alacarte.png',
      3,
      '125'
    ],
    [
      'Mie Goreng',
      'Mie goreng bumbu ala alta-resto, pasti kamu suka',
      '12.000',
      'assets/images/home/homePage/menubyCat/alacarte.png',
      3,
      '125'
    ],
    [
      'Mie Goreng',
      'Mie goreng bumbu ala alta-resto, pasti kamu suka',
      '12.000',
      'assets/images/home/homePage/menubyCat/alacarte.png',
      3,
      '125'
    ],
    [
      'Mie Goreng',
      'Mie goreng bumbu ala alta-resto, pasti kamu suka',
      '12.000',
      'assets/images/home/homePage/menubyCat/alacarte.png',
      3,
      '125'
    ],
    [
      'Mie Goreng',
      'Mie goreng bumbu ala alta-resto, pasti kamu suka',
      '12.000',
      'assets/images/home/homePage/menubyCat/alacarte.png',
      3,
      '125'
    ],
  ],
  'Paket Hemat': [
    [
      'PARE (Paket Rame)',
      'Makan bersama kawanmu rame-rame biar makin seru!',
      '115.000',
      'assets/images/home/homePage/menubyCat/paket.png',
      4,
      '320'
    ],
    [
      'PARE (Paket Rame)',
      'Makan bersama kawanmu rame-rame biar makin seru!',
      '115.000',
      'assets/images/home/homePage/menubyCat/paket.png',
      4,
      '320'
    ],
    [
      'PARE (Paket Rame)',
      'Makan bersama kawanmu rame-rame biar makin seru!',
      '115.000',
      'assets/images/home/homePage/menubyCat/paket.png',
      4,
      '320'
    ],
  ],
  'Minum': [
    [
      'Soda lemon',
      'Air soda dengan gula dan lemon',
      '15.000',
      'assets/images/home/homePage/menubyCat/minuman.png',
      5,
      '1200'
    ],
    [
      'Soda lemon',
      'Air soda dengan gula dan lemon',
      '15.000',
      'assets/images/home/homePage/menubyCat/minuman.png',
      5,
      '1200'
    ],
    [
      'Soda lemon',
      'Air soda dengan gula dan lemon',
      '15.000',
      'assets/images/home/homePage/menubyCat/minuman.png',
      5,
      '1200'
    ],
    [
      'Soda lemon',
      'Air soda dengan gula dan lemon',
      '15.000',
      'assets/images/home/homePage/menubyCat/minuman.png',
      5,
      '1200'
    ],
    [
      'Soda lemon',
      'Air soda dengan gula dan lemon',
      '15.000',
      'assets/images/home/homePage/menubyCat/minuman.png',
      5,
      '1200'
    ],
  ],
};

// ----------------------------

List orderStatusEvents = [
  [
    true,
    false,
    true,
    'Pesananmu telah masuk',
    'Pesanan masuk tanggal 10-11-23 pukul 11:18 wib',
    'assets/images/order/statusLogo.png'
  ],
  [
    false,
    false,
    true,
    'Pesananmu telah diterima',
    'Pesanan diterima tanggal 10-11-23 pukul 11:20 wib',
    'assets/images/order/statusLogo2.png'
  ],
  [
    false,
    false,
    true,
    'Pesananmu sedang disiapkan',
    'Pesananmu lagi kami masak nih',
    'assets/images/order/statusLogo3.png'
  ],
  [
    false,
    false,
    false,
    'Pesananmu sedang dipacking',
    'Sebentar ya, pesanamu sedang kami kemas agar kualitasnya tetap terjaga  ',
    'assets/images/order/statusLogo4.png'
  ],
  [
    false,
    false,
    false,
    'Pesananmu telah dikirim',
    'Pesananmu lagi diperjalanan nih, siap-siap ambil ya!',
    'assets/images/order/statusLogo5.png'
  ],
  [
    false,
    true,
    false,
    'Pesananmu telah sampai!',
    'Yeay, makanan mu sudah sampai!, selamat makan ya!',
    'assets/images/order/statusLogo6.png'
  ],
];

List orderHistory = [
  'assets/images/home/orderPage/history/historyMenu.png',
  'Oglio Olio, Nasi Karsjakndaks',
  'Rp 24.000',
  '12 Oktober 2023',
  '30 Min',
  '2 item | 4 km',
  'My Home',
  '052223',
  'sausnya tambah bangg'
];

// ----------------------------

Map<String, dynamic> faqData = {
  'Pertanyaan Umum': {
    'icon': 'assets/images/icons/accPage/pertanyaanUmum.png',
    'tags': [
      'pertanyaan',
      'umum',
      'aplikasi',
      'layanan',
      'produk',
      'restoran',
      'layanan pelanggan',
      'troubleshooting'
    ],
    'questions': [
      [
        'Untuk Aplikasi ini:',
        'Selain menyediakan informasi tentang produk dan restoran, melalui aplikasi ini kami juga memberikan layanan terbaik untuk anda.'
      ],
      [
        'Jika aplikasi tidak berfungsi lakukan:',
        '1. Langkah pertama, matikan ponsel lalu nyalakan kembali.\n2. Jika tidak berhasil, hapus aplikasi anda\n3. Terakhir, hubungi layanan pelanggan kami.'
      ],
    ],
  },
  'Pembayaran & Profil': {
    'icon': 'assets/images/icons/accPage/pembayaranProfil.png',
    'tags': [
      'pembayaran',
      'profil',
      'metode',
      'ganti',
      'hubungi',
      'ganti password',
      'customer service',
      'metode pembayaran'
    ],
    'questions': [
      [
        'Bagaimana cara mengubah PIN di Aplikasi Alta Resto?',
        'Silahkan masuk ke akun kamu, pilih profil, pilih ubah Password, masukkan PIN lama, setelah itu silahkan masukkan PIN baru.'
      ],
      [
        'Bisa kah saya mengganti metode pembayaran di aplikasi Alta Resto ini?',
        'Selama pembayaran belum dilakukan, kamu bisa melakukan transaksi baru dan menggunakan metode pembayaran lainnya.'
      ],
      [
        'Apabila ada pertanyaan, siapa yang harus saya hubungi?',
        'Kamu bisa menghubungi Customer Service kami'
      ],
      [
        'Pembayaran seperti apa yang bisa saya lakukan di Alta Resto?',
        'Kakak bisa memilih pembayaran dengan menggunakan  E-wallet (Govay, dana, ovo, shopeepay), atau Bank (BCA, Permata Bank, BRI, Bank Mandiri, Cimb Niaga, Bank BTN)'
      ],
    ],
  },
  'Pick Up': {
    'icon': 'assets/images/icons/accPage/pickUp.png',
    'tags': [
      'pick up',
      'selesai',
      'transaksi',
      'refund',
      'transaksi pick up',
      'proses selesai',
      'pengembalian dana'
    ],
    'questions': [
      [
        'Pesanan sudah di Pick up namun di aplikasi belum selesai.',
        'Jika pesanan kamu di aplikasi belum selesai, mohon tunggu 1X24 jam maka pesanan kamu otomatis akan terselesaikan.'
      ],
      [
        'Bagaimana kalau saya tidak jadi pick up pesanan saya?',
        'Mohon maaf sekali untuk transaksi yang tidak dipick up maka akan dianggap hangus dan tidak bisa direfund.'
      ],
    ],
  },
};

// -------------------------------
// rachel
class DataMenu {
  List recMenu = [
    {
      'image': 'assets/images/tuna.png',
      'title': 'Tuna With Lemon',
      'price': 'Rp 15.000',
      'dec': 'Tuna bumbu kuning dengan perasan lemon yang segar',
    },
    {
      'image': 'assets/images/sushi.png',
      'title': 'Sushi Ikan Lele',
      'price': 'Rp 15.000',
      'dec': 'Sushi Ikan Lele',
    },
    {
      'image': 'assets/images/pasta.png',
      'title': 'Pasta Ayam',
      'price': 'Rp 10.000',
      'dec': 'Pasta Ayam',
    },
    {
      'image': 'assets/images/kopi.png',
      'title': 'Kopi Hitam',
      'price': 'Rp 5.000',
      'dec': 'Kopi Hitam',
    },
    {
      'image': 'assets/images/pie.png',
      'title': 'Pie Coklat',
      'price': 'Rp 10.000',
      'dec': 'Pie Coklat',
    },
    {
      'image': 'assets/images/sandwich.png',
      'title': 'Sandwich',
      'price': 'Rp 10.000',
      'dec': 'Sandwich',
    },
  ];

  List terlaris = [
    {
      'image': 'assets/images/napolifussili.png',
      'title': 'Napolitana',
      'price': 'Rp 15.000',
      'dec': 'Fussili yang lezat dengan bumbu napoli yang segar',
    },
    {
      'image': 'assets/images/miegoreng.png',
      'title': 'Mie Goreng',
      'price': 'Rp 15.000',
      'dec': 'Mie goreng dengan seafood yang segar pas buat kamu',
    },
    {
      'image': 'assets/images/sushi.png',
      'title': 'Sushi Ikan Lele',
      'price': 'Rp 15.000',
      'dec': 'Sushi Ikan Lele',
    },
    {
      'image': 'assets/images/pasta.png',
      'title': 'Pasta Ayam',
      'price': 'Rp 10.000',
      'dec': 'Pasta Ayam',
    }
  ];
}
