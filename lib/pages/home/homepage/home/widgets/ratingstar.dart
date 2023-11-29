// Rachel

import 'package:flutter/material.dart';

class RatingStarLabel extends StatelessWidget {
  RatingStarLabel({super.key, required this.rating});

  double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 23,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      decoration: BoxDecoration(
        color: Colors.amber[600],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.star_rate_rounded,
            color: Colors.white,
            size: 16,
          ),
          Text(
            rating.toString(),
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
