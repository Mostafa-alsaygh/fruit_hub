import 'package:flutter/material.dart';

class OrderProductItem extends StatelessWidget {
  final String title;
  final String packs;
  final String price;
  final IconData icon;

  const OrderProductItem({
    super.key,
    required this.title,
    required this.packs,
    required this.price,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    double iconWidth = MediaQuery.of(context).size.width * 0.1733;
    double iconHeight = MediaQuery.of(context).size.height * 0.0788;
    return Row(
        children: [
          Container(
            width: iconWidth,
            height: iconHeight,
            decoration: BoxDecoration(
              color: Colors.orange[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Expanded(
              child: Icon(
              icon,
              color: Colors.orange,
              size: iconWidth * 0.5,
            ),
          )),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  packs,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            price,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
    );
  }
}

//Fake Data until integration
class OrderProductsList extends StatelessWidget {
  const OrderProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        OrderProductItem(
          title: 'Quinoa fruit salad',
          packs: '2packs',
          price: '₦ 20,000',
          icon: Icons.restaurant_menu,
        ),
        SizedBox(height: 16),
        OrderProductItem(
          title: 'Melon fruit salad',
          packs: '2packs',
          price: '₦ 20,000',
          icon: Icons.restaurant_menu,
        ),
        SizedBox(height: 16),
        OrderProductItem(
          title: 'Tropical fruit salad',
          packs: '2packs',
          price: '₦ 20,000',
          icon: Icons.restaurant_menu,
        ),
      ],
    );
  }
}