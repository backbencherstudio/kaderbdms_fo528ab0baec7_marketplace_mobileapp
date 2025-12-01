import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

// ignore: unused_element
class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Create Your Account",
          style: customTextStyle(
            fontFamily: FontConstants.fontFamilyInter,
            fontWeight: FontWeightManager.bold700,
            fontSize: 24.sp,
            color: AppColors.textColorBlack,
          ),
        ),

        SizedBox(height: 6.h),
        Text(
          "Sign up and enjoy your experience",
          style: customTextStyle(
            fontFamily: FontConstants.fontFamilyInter,
            fontWeight: FontWeightManager.medium500,
            fontSize: 18.sp,
            color: AppColors.secondaryTextColor,
          ),
        ),
      ],
    );
  }
}
