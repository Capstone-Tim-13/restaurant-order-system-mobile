import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            FavoriteFoodItem(
              imageAsset: 'assets/images/Group43.png',
              name: 'Mie Laminan Pedas',
              price: 'Rp 25.000',
              rating: '4.5',
              description: 'Mie Lamian yang lembut dengan kuah sup pedas',
            ),
            FavoriteFoodItem(
              imageAsset: 'assets/images/Group43.png',
              name: 'Mie Laminan Pedas',
              price: 'Rp 25.000',
              rating: '4.5',
              description: 'Mie Lamian yang lembut dengan kuah sup pedas',
            ),
            FavoriteFoodItem(
              imageAsset: 'assets/images/Group43.png',
              name: 'Mie Laminan Pedas',
              price: 'Rp 25.000',
              rating: '4.5',
              description: 'Mie Lamian yang lembut dengan kuah sup pedas',
            ),
          ],
        ),
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
              'Menu Favorite',
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteFoodItem extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String price;
  final String rating;
  final String description;

  const FavoriteFoodItem({
    required this.imageAsset,
    required this.name,
    required this.price,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 299,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            FoodImage(imageAsset: imageAsset),
            FoodDesc(
                name: name,
                price: price,
                rating: rating,
                description: description),
            FooterOrderFavorite(),
          ],
        ),
      ),
    );
  }
}

class FoodImage extends StatelessWidget {
  final String imageAsset;

  const FoodImage({required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.1),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '15 Min',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Image.asset(
                          'assets/images/Heart.png',
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FoodDesc extends StatelessWidget {
  final String name;
  final String price;
  final String rating;
  final String description;

  const FoodDesc({
    required this.name,
    required this.price,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/images/Favrating.png',
                  width: 45,
                  height: 45,
                ),
                const Spacer(),
                Text(
                  price,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF783525),
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
                letterSpacing: 0.5,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class FooterOrderFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ButtonOrder('-', () {}),
          const SizedBox(width: 1),
          const Text('1'),
          const SizedBox(width: 1),
          ButtonOrder('+', () {}),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              // Add your logic for adding items to the cart
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF783525),
              minimumSize: const Size(80, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60.0),
              ),
            ),
            child: const Text(
              '+ Add',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color.fromARGB(255, 249, 249, 249),
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonOrder extends StatelessWidget {
  final String icon;
  final Function func;

  const ButtonOrder(this.icon, this.func);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        func();
      },
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF783525),
        shape: const CircleBorder(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          icon,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
