import 'package:flutter/material.dart';

class FruitBasketSection extends StatelessWidget {
  final String image;
  const FruitBasketSection({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: height * 0.57,
      color: const Color(0xFFFFA451),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, width: 280),
          SizedBox(height: 8),
          Container(
            width: width * 0.802,
            height: height * 0.014,
            decoration: BoxDecoration(
              color: Color(0xFFE08626),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ],
      ),
    );
  }
}
