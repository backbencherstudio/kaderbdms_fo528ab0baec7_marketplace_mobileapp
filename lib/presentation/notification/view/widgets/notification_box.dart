import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class NotificationBox extends StatelessWidget {
  final String title;
  final String message;
  final String time;
  final String icon;

  const NotificationBox({
    super.key,
    required this.title,
    required this.message,
    required this.time,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 18.w),
      decoration: BoxDecoration(
        border: Border.all(color: ColorManager.primaryColor, width: 1),
        borderRadius: BorderRadius.circular(15.r),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(icon, height: 25.h, width: 25.w),

                  SizedBox(width: 3.w),

                  Text(
                    title,
                    style: getSemiBold600Style14(
                      fontSize: 14.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),
                ],
              ),

              Text(
                time,
                style: getMedium500Style14(
                  fontSize: 14.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
            ],
          ),

          SizedBox(height: 12.h),

          Text(
            message,
            strutStyle: const StrutStyle(height: 1.3),
            style: getMedium500Style14(
              fontSize: 14.sp,
              color: ColorManager.textSecondaryThree,
            ),
          ),
        ],
      ),
    );
  }
}
