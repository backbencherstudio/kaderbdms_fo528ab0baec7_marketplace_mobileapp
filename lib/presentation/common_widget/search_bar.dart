import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final VoidCallback? onSearchTap;

  const CustomSearchBar({super.key, this.controller, this.onSearchTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: ColorManager.buttonSecondaryColor,
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Row(
        children: [
          SizedBox(width: 15.w),

          Expanded(
            child: TextField(
              controller: controller,
              style: const TextStyle(color: ColorManager.textPrimaryBlack),
              decoration: const InputDecoration(
                filled: false,
                fillColor: Colors.transparent,

                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              cursorColor: Colors.black,
            ),
          ),

          GestureDetector(
            onTap: onSearchTap,
            child: Container(
              height: 48.h,
              width: 48.h,
              margin: EdgeInsets.only(right: 0.w),
              decoration: const BoxDecoration(
                color: ColorManager.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  IconManager.searchIcon,
                  color: Colors.white,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
