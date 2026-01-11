import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.textStyle,
  });
  final String title;
  final double width;
  final double height;
  final Color backgroundColor;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          overlayColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: AppColors.primary, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(title, style: textStyle),
      ),
    );
  }
}
