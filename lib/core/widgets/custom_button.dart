import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String route;
  const CustomButton({super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.go(route),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFFA451),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontFamily: 'Brandon Grotesque',
        ),
      ),
    );
  }
}
