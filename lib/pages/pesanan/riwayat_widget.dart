import "package:flutter/material.dart";

Widget riwayatWidget(BuildContext context) {
    return Container(
      height: 260,
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
          foodImage(),
          descFood(context),
        ],
      ),
    );
  }

  Flexible descFood(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  // Mediaquery untuk mengambii ukuran layar device
                  width: MediaQuery.of(context).size.width / 3,
                  child: const Text(
                    'Mie Lamian Pedas',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
               
                const Spacer(),
                const Text(
                  'Rp 15.000',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Mie Lamian lembut dengan kuah',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black54,
              ),
            ),
            const Spacer(),
            footerOrderFavorite()
          ],
        ),
      ),
    );
  }

  Flexible foodImage() {
    return Flexible(
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
                'assets/images/home/orderPage/ongoing/ongoingMenu.png',
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
                    Colors.black.withOpacity(0.8),
                  ],
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '15 Min',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
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

  Row footerOrderFavorite() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // buttonOrder('-', decrement),
                Text('halo'),
               // buttonOrder('+', increment),
              ],
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
                color: Colors.brown, borderRadius: BorderRadius.circular(15)),
            child: const Center(
              child: Text(
                '+ Add',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  GestureDetector buttonOrder(String icon, Function func) {
    return GestureDetector(
      onTap: () {
        func();
      },
      child: Container(
        width: 26,
        height: 26,
        decoration: const BoxDecoration(
          color: Colors.brown,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            icon,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

//   void increment() {
//     setState(() {
//       amount++;
//     });
//   }

//   void decrement() {
//     if (amount >= 1) {
//       setState(() {
//         amount--;
//       });
//     } else {
//       amount = 0;
//     }
//   }
// }