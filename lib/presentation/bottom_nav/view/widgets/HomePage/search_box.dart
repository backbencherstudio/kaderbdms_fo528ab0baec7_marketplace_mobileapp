import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 55.h,
        decoration: BoxDecoration(
          color: AppColors.buttonColorNoHover,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: "Rechercher des produits ou services",
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),

            suffixIconConstraints: const BoxConstraints(
              minWidth: 80,
              minHeight: 80,
            ),

            //
            suffixIcon: Container(
              padding: const EdgeInsets.all(22),
              decoration: const BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/icons/search.png",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
