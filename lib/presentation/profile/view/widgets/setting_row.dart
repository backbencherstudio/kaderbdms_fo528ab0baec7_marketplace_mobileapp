import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class SettingRowList extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback? onTap;

  const SettingRowList({
    super.key,
    required this.iconPath,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 15.h),
          child: GestureDetector(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(iconPath, color: Colors.black, width: 22.w),
                    SizedBox(width: 10.w),
                    Text(
                      title,
                      style: getMedium500Style14(
                        fontWeight: FontWeightManager.medium500,
                        fontSize: 14.sp,
                        color: AppColors.textColorBlack,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/icons/arrow.png",
                  color: Colors.black,
                  width: 22.w,
                ),
              ],
            ),
          ),
        ),

        SizedBox(
          width: 350.w,
          child: Divider(color: Colors.grey.shade300, height: 0, thickness: 1),
        ),
      ],
    );
  }
}
