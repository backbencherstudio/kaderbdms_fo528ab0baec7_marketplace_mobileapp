import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 55.h,
        decoration: BoxDecoration(
          color: AppColors.buttonColorNoHover,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  hintText: "Rechercher des produits ou services",
                  filled: true,
                  fillColor: Colors.transparent,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
            ),

            Container(
              height: 55.h,
              width: 55.h,
              margin: const EdgeInsets.only(right: 5),
              decoration: const BoxDecoration(
                color: ColorManager.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  IconManager.searchIcon,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
