import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';

Widget dot(bool isActive) {
  return Container(
    height: 8.h,
    width: 8.w,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isActive ? ColorManager.primaryColor : Colors.grey.shade300,
    ),
  );
}
