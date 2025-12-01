import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    this.containColor,
    this.textStyle,
    this.padding,
    required this.borderRadius,
    this.onTap,
  });

  final String title;
  final Color? containColor;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final BorderRadius borderRadius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,

        decoration: BoxDecoration(
          color: containColor ?? AppColors.primary,
          borderRadius: borderRadius,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.w),
          child: Text(
            textAlign: TextAlign.center,
            title,
            style:
                textStyle ??
                customTextStyle(
                  fontFamily: FontConstants.fontFamilyInter,
                  fontWeight: FontWeightManager.semiBold600,
                  fontSize: 16.sp,
                  color: AppColors.textColor,
                ),
          ),
        ),
      ),
    );
  }
}
