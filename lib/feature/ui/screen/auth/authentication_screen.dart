import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/fruit_basket_section.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const FruitBasketSection(
              image: 'assets/images/img_fruits_outside_basket.png',
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      'What is your firstname?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF27214D),
                        fontFamily: 'Brandon Grotesque',
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Tony',
                        hintStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFC2BDCC),
                          fontFamily: 'Brandon Grotesque',
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF3F1F1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF5D577E),
                        fontFamily: 'Brandon Grotesque',
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: CustomButton(
                        text: 'Start Ordering',
                        route: '/home',
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
