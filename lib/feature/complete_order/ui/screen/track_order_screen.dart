import 'package:flutter/material.dart';
import 'package:fruit_hub/core/const/app_asset.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/feature/complete_order/ui/widget/order_statu_item.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(color: AppColors.primary),
            child: Padding(
              padding: const EdgeInsets.only(top: 28.0, left: 24),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x1a202020),
                          blurRadius: 60,
                          offset: Offset(0, 30),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: Colors.black,
                        ),
                        Text(
                          "Go back",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.darkPurple,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 14),
                  Text(
                    "Delivery Status",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          OrderStatuItem(
            title: "Order Taken",
            imageUrl: AppAsset.takeOrder,
            backgroud: AppColors.lightYellow,
          ),
          _dotLine(),
          OrderStatuItem(
            title: "Order Is Being Prepared",
            imageUrl: AppAsset.prepared,
            backgroud: AppColors.lightGrey,
          ),
          _dotLine(),
          OrderStatuItem(
            title: "Order Is Being Delivered",
            subtitle: "Your delivery agent is coming",
            imageUrl: AppAsset.delivery,
            backgroud: AppColors.lightPink,
            isCompleted: false,
            trailing: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.phone_in_talk,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
          _dotLine(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                AppAsset.map,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          _dotLine(),
          OrderStatuItem(
            imageUrl: AppAsset.done,
            title: "Order Received",
            isCompleted: false,
            backgroud: AppColors.lightGreen,
            trailing: Row(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: AppColors.lightOrange,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dotLine() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 56),
      child: Column(
        children: List.generate(
          5,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Container(
              width: 2,
              height: 4,
              decoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.rectangle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
