import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
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
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
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
                            vertical: 10.h,
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
                    clipBehavior: Clip.hardEdge,
                    children: [
                      Positioned(
                        top: -2,
                        right: 60,
                        child: ClipRRect(
                          child: Image.asset(
                            ImageManager.homeBannerImage1,

                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Positioned(
                        top: 65.h,
                        right: 10.w,
                        child: ClipRRect(
                          child: Image.asset(
                            ImageManager.homeBannerImage3,

                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 0,
                        right: 95.w,
                        child: ClipRRect(
                          child: Image.asset(ImageManager.homeBannerImage2),
                        ),
                      ),

                      Positioned(
                        bottom: 6.h,
                        right: 40.w,
                        child: ClipRRect(
                          child: Image.asset(
                            ImageManager.promo,
                            height: 30.h,
                            width: 30.w,
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
