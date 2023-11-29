void main() {
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

  int data = getTotalListLen(menuData);
  List data2 = showMenu(menuData);
  print(data2.length);
}

int getTotalListLen(data) {
  dynamic totalLength = 0;

  data.forEach((category, items) {
    totalLength += items.length;
  });

  return totalLength;
}

List showMenu(data) {
  List<dynamic> combinedData = [];

  data.forEach((category, items) {
    combinedData.addAll(items);
  });

  return combinedData;
}
