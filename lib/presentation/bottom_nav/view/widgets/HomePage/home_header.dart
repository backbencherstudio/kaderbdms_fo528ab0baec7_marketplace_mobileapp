import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Hello Adam",
                        style: customTextStyle(
                          fontFamily: FontConstants.fontFamilyInter,
                          fontWeight: FontWeightManager.medium500,
                          fontSize: 24.sp,
                          color: AppColors.primary,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      SizedBox(
                        width: 20.w,
                        height: 20.h,
                        child: Image.asset(
                          "assets/icons/hi.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Good morning, Adam!",
                    style: customTextStyle(
                      fontFamily: FontConstants.fontFamilyInter,
                      fontWeight: FontWeightManager.regural400,
                      fontSize: 14.sp,
                      color: AppColors.textColorBlack,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: 25.w,
                      height: 25.h,
                      child: Image.asset(
                        "assets/icons/shopping.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 15.w),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: 25.w,
                      height: 25.h,
                      child: Image.asset(
                        "assets/icons/bell.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
