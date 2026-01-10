import 'package:flutter/material.dart';

Widget buildCategoryChips({
  required List<String> categories,
  required String selectedCategory,
  required Function(String) onCategorySelected,
}) {
  return SizedBox(
    height: 50,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        final isSelected = category == selectedCategory;

        return Padding(
          padding: const EdgeInsets.only(right: 12),
          child: GestureDetector(
            onTap: () => onCategorySelected(category),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  category,
                  style: TextStyle(
                    color: isSelected
                        ? const Color(0xFF2D3142)
                        : const Color(0xFFB4B4C6),
                    fontSize: 18,
                    fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                    letterSpacing: 0.3,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 3,
                  width: isSelected ? 40 : 0,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF6B35),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}