import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';

class orderCard extends StatelessWidget {
  const orderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.fieldText),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Order Number:",
                    style: getRegular400Style14(
                      fontWeight: FontWeightManager.regural400,
                      fontSize: 14.sp,
                      color: ColorManager.textSecondary,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "27456",
                    style: getSemiBold600Style14(
                      fontWeight: FontWeightManager.semiBold600,
                      fontSize: 14.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),
                ],
              ),

              Text(
                "\$243.00",
                style: getSemiBold600Style18(
                  fontWeight: FontWeightManager.semiBold600,
                  fontSize: 18.sp,
                  color: ColorManager.textRedColor,
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Payment Status:",
                    style: getRegular400Style14(
                      fontWeight: FontWeightManager.regural400,
                      fontSize: 14.sp,
                      color: ColorManager.textSecondary,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Paid",
                    style: getSemiBold600Style14(
                      fontWeight: FontWeightManager.semiBold600,
                      fontSize: 14.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),
                ],
              ),

              Text(
                "21.08.2025",
                style: getRegular400Style14(
                  fontWeight: FontWeightManager.regural400,
                  fontSize: 14.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Delivery Status:",
                    style: getRegular400Style14(
                      fontWeight: FontWeightManager.regural400,
                      fontSize: 14.sp,
                      color: ColorManager.textSecondary,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Completed",
                    style: getSemiBold600Style14(
                      fontWeight: FontWeightManager.semiBold600,
                      fontSize: 14.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),
                ],
              ),

              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.orderDetailsRoute);
                },
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorManager.primaryColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Order Detail",
                    style: getSemiBold600Style12(
                      fontWeight: FontWeightManager.semiBold600,
                      fontSize: 12.sp,
                      color: ColorManager.primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
