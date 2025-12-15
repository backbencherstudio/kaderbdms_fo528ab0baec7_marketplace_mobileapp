import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';

class CircleCheckIcon extends StatelessWidget {
  final bool isChecked;
  final double size;
  final Color activeColor;
  final Color inactiveColor;
  final VoidCallback onTap;

  const CircleCheckIcon({
    super.key,
    required this.isChecked,
    required this.onTap,
    this.size = 22,
    this.activeColor = AppColors.fotgotpassText,
    this.inactiveColor = AppColors.defaultColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size.h,
        width: size.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isChecked ? activeColor : inactiveColor,
        ),
        child: Icon(Icons.check, size: (size * 0.55).sp, color: Colors.white),
      ),
    );
  }
}
