import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.amount,
    required this.quantityAmount,
  });

  final String title;
  final String imagePath;
  final String amount;
  final String quantityAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorManager.fieldText, width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.asset(
              imagePath,
              width: 80.w,
              height: 80.h,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(width: 14.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: getMedium500Style14(
                          color: ColorManager.itemTextColor,
                        ),
                      ),
                    ),
                    Text(
                      amount,
                      style: getSemiBold600Style14(
                        fontSize: 14.sp,
                        color: ColorManager.primaryColor,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10.h),

                Divider(color: ColorManager.fieldText, thickness: 1),

                SizedBox(height: 10.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Quantity",
                      style: getRegular400Style12(
                        fontSize: 12.sp,
                        color: ColorManager.textSecondaryTwo,
                      ),
                    ),
                    Text(
                      quantityAmount,
                      style: getRegular400Style12(
                        fontSize: 12.sp,
                        color: ColorManager.textPrimaryBlack,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
