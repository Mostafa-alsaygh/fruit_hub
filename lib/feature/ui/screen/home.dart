import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/category_chips.dart';
import '../widget/combo_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'Hottest';
  final List<String> categories = [
    'Hottest',
    'Popular',
    'New combo',
    'Popular',
    'New combo',
    'Top',
  ];

  @override
  Widget build(BuildContext context) {

    double searchHeight = MediaQuery.of(context).size.height * 0.150;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/svg/settings.svg'),
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/my_basket.svg',
                            height: 24.0,
                            width: 24.0,
                          ),
                          const Text(
                            "My basket",
                            style: TextStyle(
                              fontFamily: 'Brandon Grotesque',
                              fontWeight: FontWeight.w500,
                              fontSize: 10.0,
                              color: Color(0xFF27214D),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  const Text(
                    "Hello Tony, What fruit salad\ncombo do you want today?",
                    style: TextStyle(
                      fontFamily: 'Brandon Grotesque',
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0,
                      color: Color(0xFF27214D),
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  // --- SEARCH BAR ROW ---
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: searchHeight,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F4F9),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: "Search for fruit salad combos",
                              hintStyle: TextStyle(
                                fontFamily: 'Brandon Grotesque',
                                color: Color(0xFF86869E),
                                fontSize: 14,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xFF86869E),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      SvgPicture.asset(
                        'assets/svg/search_settings.svg',
                        height: 18.0,
                        width: 26.0,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  const Text(
                    "Recommended Combo",
                    style: TextStyle(
                      fontFamily: 'Brandon Grotesque',
                      fontWeight: FontWeight.w500,
                      fontSize: 24.0,
                      color: Color(0xFF27214D),
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Row(
                    children: [
                      Expanded(
                        child: ComboCard(
                          name: "Honey lime combo",
                          price: "2,000",
                          imagePath: "assets/images/glowing_Berry_Fruit.png",
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: ComboCard(
                          name: "Berry mango combo",
                          price: "8,000",
                          imagePath: "assets/images/honey_Lime_Peach.png",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            // Category chips - full width
            CategoryChips(
              categories: categories,
              selectedCategory: selectedCategory,
              onCategorySelected: (category) {
                setState(() {
                  selectedCategory = category;
                });
              },
            ),
            const SizedBox(height: 24.0),
            // Horizontal list of cards - full width
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  ComboCard(
                    name: "Honey lime combo",
                    price: "2,000",
                    imagePath: "assets/images/glowing_Berry_Fruit.png",
                  ),
                  const SizedBox(width: 16),
                  ComboCard(
                    name: "Berry mango combo",
                    price: "8,000",
                    imagePath: "assets/images/honey_Lime_Peach.png",
                  ),
                  const SizedBox(width: 16),
                  ComboCard(
                    name: "Quinoa fruit salad",
                    price: "10,000",
                    imagePath: "assets/images/glowing_Berry_Fruit.png",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
