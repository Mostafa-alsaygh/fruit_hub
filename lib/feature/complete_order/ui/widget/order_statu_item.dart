import 'package:flutter/material.dart';

class OrderStatuItem extends StatelessWidget {
  const OrderStatuItem({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.backgroud,
    this.subtitle,
    this.trailing,
    this.isCompleted = true,
  });
  final String title;
  final String imageUrl;
  final Color backgroud;
  final String? subtitle;
  final bool isCompleted;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: backgroud,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Image.asset(imageUrl, width: 48, height: 48),
                ),
              ),
            ],
          ),
          SizedBox(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              if (subtitle != null)
                Text(
                  subtitle ?? "",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
            ],
          ),
          Spacer(),
          if (isCompleted)
            const Icon(Icons.check_circle, color: Colors.green, size: 24)
          else if (trailing != null)
            trailing ?? SizedBox(),
        ],
      ),
    );
  }
}
