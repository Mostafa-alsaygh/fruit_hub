import 'package:flutter/material.dart';

class AddToBasketScreen extends StatefulWidget {
  final String name;
  final String price;
  final String imagePath;

  const AddToBasketScreen({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
  });

  @override
  State<AddToBasketScreen> createState() => _AddToBasketScreenState();
}

class _AddToBasketScreenState extends State<AddToBasketScreen> {
  int quantity = 1;
  bool isFavorite = false;

  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFA451),
      body: SafeArea(
        child: Column(
          children: [
            // Top section with orange background
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  // Go back button
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              size: 16,
                              color: Color(0xFF27214D),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Go back',
                              style: TextStyle(
                                fontFamily: 'Brandon Grotesque',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF27214D),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Product image
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        widget.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Bottom section with white background
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product name
                      Text(
                        widget.name,
                        style: const TextStyle(
                          fontFamily: 'Brandon Grotesque',
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF27214D),
                        ),
                      ),
                      const SizedBox(height: 24),
                      // Quantity and price row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              // Decrement button
                              GestureDetector(
                                onTap: _decrementQuantity,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xFFF3F4F9),
                                      width: 2,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Color(0xFF27214D),
                                    size: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 24),
                              // Quantity text
                              Text(
                                quantity.toString(),
                                style: const TextStyle(
                                  fontFamily: 'Brandon Grotesque',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF27214D),
                                ),
                              ),
                              const SizedBox(width: 24),
                              // Increment button
                              GestureDetector(
                                onTap: _incrementQuantity,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFFFFF2E1),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Color(0xFFFFA451),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Price
                          Text(
                            '₦ ${widget.price}',
                            style: const TextStyle(
                              fontFamily: 'Brandon Grotesque',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF27214D),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      // One Pack Contains section
                      const Text(
                        'One Pack Contains:',
                        style: TextStyle(
                          fontFamily: 'Brandon Grotesque',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF27214D),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Divider(
                        color: Color(0xFFF3F4F9),
                        thickness: 1,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                        style: TextStyle(
                          fontFamily: 'Brandon Grotesque',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF27214D),
                          height: 1.6,
                        ),
                      ),
                      const SizedBox(height: 32),
                      // Description
                      const Text(
                        'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                        style: TextStyle(
                          fontFamily: 'Brandon Grotesque',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF27214D),
                          height: 1.6,
                        ),
                      ),
                      const Spacer(),
                      // Bottom buttons
                      Row(
                        children: [
                          // Favorite button
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: const Color(0xFFF3F4F9),
                                  width: 1,
                                ),
                              ),
                              child: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isFavorite
                                    ? const Color(0xFFFFA451)
                                    : const Color(0xFFC2BDBD),
                                size: 24,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          // Add to basket button
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                // Add to basket logic
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Added to basket!'),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                              },
                              child: Container(
                                height: 56,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFA451),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Add to basket',
                                    style: TextStyle(
                                      fontFamily: 'Brandon Grotesque',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}