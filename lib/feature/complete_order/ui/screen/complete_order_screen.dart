import 'package:flutter/material.dart';
import 'package:fruit_hub/core/const/app_asset.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/feature/complete_order/ui/widget/primary_button.dart';

class CompleteOrderScreen extends StatelessWidget {
  const CompleteOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 140),
            Image.asset(AppAsset.completeOrder, width: 164, height: 164),
            SizedBox(height: 56),
            Text(
              "Congratulations!!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: AppColors.darkPurple,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Your order have been taken and is being attended to",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: AppColors.darkPurple,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(height: 56),
            PrimaryButton(
              title: "Track order",
              width: 133,
              height: 56,
              backgroundColor: AppColors.primary,
              textStyle: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 48),
            PrimaryButton(
              title: "Continue shopping",
              width: 181,
              height: 56,
              backgroundColor: Colors.transparent,
              textStyle: TextStyle(
                fontSize: 16,
                color: AppColors.primary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
