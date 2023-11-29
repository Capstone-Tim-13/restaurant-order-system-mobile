// Rachel

import 'package:flutter/material.dart';

import 'ratingstar.dart';

class MenuCard extends StatelessWidget {
  MenuCard({
    super.key,
    required this.title,
    required this.price,
    required this.desc,
    required this.imagePth,
  });

  String imagePth, title, price, desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 280,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: const EdgeInsets.all(15),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 180,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePth,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            price,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.brown,
            ),
          ),
          const SizedBox(height: 5),
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
          FooterCard(),
        ],
      ),
    );
  }

  Padding FooterCard() => Padding(
        padding: EdgeInsets.only(top: 10),
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RatingStarLabel(
                rating: 4.4,
              ),
              const Text('30 Min',
                  style: TextStyle(fontSize: 12, color: Colors.black54)),
              const Text('Best Menu',
                  style: TextStyle(fontSize: 12, color: Colors.black54)),
            ],
          ),
        ),
      );
}
