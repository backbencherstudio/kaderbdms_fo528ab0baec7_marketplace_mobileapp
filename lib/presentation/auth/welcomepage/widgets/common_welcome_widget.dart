import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';

class CommonWelcomeWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback onButtonTap;

  const CommonWelcomeWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 136.h, height: 136.h),

          SizedBox(height: 25.h),
          Text(
            title,
            style: customTextStyle(
              fontFamily: FontConstants.fontFamilyInter,
              fontWeight: FontWeightManager.semiBold600,
              fontSize: 24.sp,
              color: AppColors.textColorBlack,
            ),
          ),

          SizedBox(height: 10.h),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: customTextStyle(
              fontFamily: FontConstants.fontFamilyInter,
              fontWeight: FontWeightManager.medium500,
              fontSize: 18.sp,
              color: AppColors.secondaryTextColor,
            ),
          ),

          SizedBox(height: 30.h),
          PrimaryButton(
            textStyle: TextStyle(
              color: AppColors.textColor,
              fontSize: 16.sp,
              fontFamily: FontConstants.fontFamilyInter,
              fontWeight: FontWeightManager.semiBold600,
            ),
            containColor: AppColors.primary,
            title: buttonText,
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.w),
            borderRadius: BorderRadius.circular(100.r),
            onTap: onButtonTap,
          ),
        ],
      ),
    );
  }
}
