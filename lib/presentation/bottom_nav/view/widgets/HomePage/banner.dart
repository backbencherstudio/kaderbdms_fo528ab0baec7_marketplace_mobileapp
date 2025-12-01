import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 170.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primary, // color must be inside decoration
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "On Everything Today",
                        style: customTextStyle(
                          fontFamily: FontConstants.fontFamilyInter,
                          fontWeight: FontWeightManager.regural400,
                          fontSize: 14.sp,
                          color: AppColors.whiteTextColor,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "25% OFF",
                        style: customTextStyle(
                          fontFamily: FontConstants.fontFamilyInter,
                          fontWeight: FontWeightManager.semiBold600,
                          fontSize: 24.sp,
                          color: AppColors.textErrorOrOffer,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "Sale Ends: Nov 8",
                        style: customTextStyle(
                          fontFamily: FontConstants.fontFamilyInter,
                          fontWeight: FontWeightManager.regural400,
                          fontSize: 12.sp,
                          color: AppColors.bannerTextColor,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 28.w,
                            vertical: 13.h,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Shop Now",
                                style: customTextStyle(
                                  fontFamily: FontConstants.fontFamilyInter,
                                  fontWeight: FontWeightManager.semiBold600,
                                  fontSize: 14.sp,
                                  color: AppColors.primary,
                                ),
                              ),
                              SizedBox(width: 6.w),
                              const Icon(
                                Icons.arrow_outward,
                                size: 20,
                                color: AppColors.primary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 160.w,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: 10,
                        top: 40,

                        right: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.r),
                          child: Image.asset(
                            "assets/images/youngwoman.png",
                            height: 65.h,
                            width: 65.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Positioned(
                        top: 55.h,
                        right: 80.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40.r),
                          child: Image.asset(
                            "assets/images/young2.png",
                            height: 70.h,
                            width: 70.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: -10,
                        right: 60.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40.r),
                          child: Image.asset(
                            "assets/images/young3.png",
                            height: 70.h,
                            width: 70.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Positioned(
                        top: 55.h,
                        right: 80.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40.r),
                          child: Image.asset(
                            "assets/images/promo.png",
                            height: 70.h,
                            width: 70.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
