import 'package:flutter/material.dart';

class ComboCard extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final Color backgroundColor;

  const ComboCard({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.37;

    return Container(
      width: width,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Favorite Icon at top right
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.favorite_border,
              color: Colors.orange[300],
              size: 20,
            ),
          ),

          // Product Image
          Center(
            child: Image.asset(imagePath, height: 80, fit: BoxFit.contain),
          ),

          const SizedBox(height: 8),

          // Name Text
          Text(
            name,
            style: const TextStyle(
              fontFamily: 'Brandon Grotesque',
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
              color: Color(0xFF27214D),
            ),
          ),

          const SizedBox(height: 8),

          // Price and Add Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "₦ $price",
                style: TextStyle(
                  fontFamily: 'Brandon Grotesque',
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  color: Colors.orange[800],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF2E7),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  color: Color(0xFFFFA451),
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
