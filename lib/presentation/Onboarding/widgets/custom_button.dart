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
    this.borderColor,
    this.borderWidth,
  });

  final String title;
  final Color? containColor;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final BorderRadius borderRadius;
  final VoidCallback? onTap;
  final Color? borderColor;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: containColor ?? AppColors.primary,
          borderRadius: borderRadius,
          border: (borderColor != null)
              ? Border.all(color: borderColor!, width: borderWidth ?? 1)
              : null,
        ),

        child: Padding(
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.w),
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
