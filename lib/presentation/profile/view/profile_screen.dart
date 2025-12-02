import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key});

  @override
  State<ProfilePageScreen> createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primary,
        height: 170.h,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 80.w,
                width: 70.w,
                decoration: const BoxDecoration(
                  color: AppColors.innerCircleColor,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  "JB",
                  style: getSemiBoldStyle(
                    fontFamily: FontConstants.fontFamilyInter,
                    fontWeight: FontWeightManager.bold700,
                    fontSize: 28.sp,
                    color: AppColors.innerCircleTextColor,
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    "John Brown",
                    style: getSemiBoldStyle(
                      fontFamily: FontConstants.fontFamilyInter,
                      fontWeight: FontWeightManager.semiBold600,
                      fontSize: 18.sp,
                      color: AppColors.onPrimary,
                    ),
                  ),
                  SizedBox(height: 5.h),

                  Text(
                    "jontahanbustos@gmail.com",
                    style: getSemiBoldStyle(
                      fontFamily: FontConstants.fontFamilyInter,
                      fontWeight: FontWeightManager.regural400,
                      fontSize: 12.sp,
                      color: AppColors.onPrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}