// Rachel

import 'package:capstone_restaurant/pages/home/homepage/home/widgets/ratingstar.dart';
import 'package:flutter/material.dart';

class LarisCard extends StatelessWidget {
  LarisCard({
    super.key,
    required this.title,
    required this.desc,
    required this.imagePth,
  });

  String imagePth, title, desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 190,
        height: 290,
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
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
            imageSect(),
            footerCard(),
          ],
        ),
      ),
    );
  }

  Flexible imageSect() {
    return Flexible(
      flex: 3,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: SizedBox(
          height: double.infinity,
          child: Image.asset(
            imagePth,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Flexible footerCard() {
    return Flexible(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const Spacer(),
                Flexible(
                  flex: 2,
                  child: RatingStarLabel(rating: 4.1),
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(
              desc,
              maxLines: 2,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
