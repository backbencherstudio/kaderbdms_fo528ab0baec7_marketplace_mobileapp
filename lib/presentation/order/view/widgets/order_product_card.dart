import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';

import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class OrderProductCard extends StatelessWidget {
  const OrderProductCard({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          // ignore: deprecated_member_use
          color: ColorManager.textSecondaryTwo.withOpacity(0.3),
        ),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              imagePath,
              // ImageManager.cartProduct,
              height: 90.h,
              width: 90.h,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(width: 12.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "The Wihte Hat Pro..",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: getMedium500Style14(
                          fontSize: 14.sp,
                          color: ColorManager.textPrimaryBlack,
                        ),
                      ),
                    ),
                    Text(
                      "\$28",
                      style: getSemiBold600Style14(
                        fontSize: 14.sp,
                        color: ColorManager.primaryColor,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 2.h),

                Divider(color: ColorManager.textSecondaryTwo),

                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Color",
                      style: getRegular400Style12(
                        fontSize: 12.sp,
                        color: ColorManager.textSecondaryTwo,
                      ),
                    ),
                    Text(
                      "White",
                      style: getRegular400Style12(
                        fontSize: 12.sp,
                        color: ColorManager.textPrimaryBlack,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 4.h),

                /// Size Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Size",
                      style: getRegular400Style12(
                        fontSize: 12.sp,
                        color: ColorManager.textSecondaryTwo,
                      ),
                    ),
                    Text(
                      "Large",
                      style: getRegular400Style12(
                        fontSize: 12.sp,
                        color: ColorManager.textPrimaryBlack,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 4.h),

                /// Quantity Row
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
                      "1",
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
