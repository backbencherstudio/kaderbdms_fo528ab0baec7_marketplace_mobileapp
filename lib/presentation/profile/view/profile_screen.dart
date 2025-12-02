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
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(20.r),
        //     bottomRight: Radius.circular(20.r),
        //   ),
        // ),
        color: AppColors.primary,
        height: 170.h,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50.h),
                      Text(
                        "Jonathan Bustos",
                        style: getSemiBoldStyle(
                          fontFamily: FontConstants.fontFamilyInter,
                          fontWeight: FontWeightManager.semiBold600,
                          fontSize: 18.sp,
                          color: AppColors.onPrimary,
                        ),
                      ),
                      SizedBox(height: 5.h),

                      Text(
                        "jonathanbustos@gmail.com",
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

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    "assets/icons/edit.png",
                    color: AppColors.whiteTextColor,
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
