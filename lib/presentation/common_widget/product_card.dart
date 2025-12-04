import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.onLikeTap,
    required this.onCartTap,
  });

  final String imagePath;
  final String title;
  final String description;
  final String price;
  final String rating;
  final VoidCallback? onLikeTap;
  final VoidCallback? onCartTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: ColorManager.textFieldInnerColor,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  imagePath,
                  height: 130.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 8,
                right: -6,
                child: GestureDetector(
                  onTap: onLikeTap,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      IconManager.like,
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 8,
                right: -6,
                child: GestureDetector(
                  onTap: onCartTap,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      IconManager.cartbutton,
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          Text(
            title,
            style: getMedium500Style14(
              fontSize: 14.sp,
              color: ColorManager.textPrimaryBlack,
            ),
          ),

          SizedBox(height: 6.h),

          Text(
            description,
            style: getRegular400Style14(
              fontSize: 14.sp,
              color: ColorManager.textSecondary,
            ),
          ),

          SizedBox(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: getMedium500Style16(
                  fontSize: 16.sp,
                  color: ColorManager.textPrimaryBlack,
                ),
              ),

              Row(
                children: [
                  Image.asset(
                    IconManager.rating,
                    height: 12,
                    width: 12,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: 3.w),
                  Text(
                    rating,
                    style: getRegular400Style10(
                      fontSize: 10.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
