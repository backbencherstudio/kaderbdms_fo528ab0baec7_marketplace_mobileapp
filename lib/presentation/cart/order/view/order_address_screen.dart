import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';

class OrderAddressScreen extends StatefulWidget {
  const OrderAddressScreen({super.key});

  @override
  State<OrderAddressScreen> createState() => _OrderAddressScreenState();
}

class _OrderAddressScreenState extends State<OrderAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),

                CommonHeader(title: "Add Address to Order"),

                SizedBox(height: 15.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      IconManager.one,
                      height: 20.h,
                      width: 20.h,
                      fit: BoxFit.contain,
                    ),

                    SizedBox(width: 6.w),

                    Text(
                      "Set Address",
                      style: getSemiBold600Style14(
                        fontSize: 14.sp,
                        color: ColorManager.textPrimaryBlack,
                      ),
                    ),

                    SizedBox(width: 15.w),

                    Image.asset(
                      IconManager.orderArrow,
                      height: 18.h,
                      width: 18.h,
                      fit: BoxFit.contain,
                    ),

                    SizedBox(width: 15.w),

                    Image.asset(
                      IconManager.two,
                      height: 20.h,
                      width: 20.h,
                      fit: BoxFit.contain,
                    ),

                    SizedBox(width: 6.w),

                    Text(
                      "Confirm Order",
                      style: getMedium500Style14(
                        fontSize: 14.sp,
                        color: ColorManager.textSecondaryTwo,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10.h),

                Divider(color: ColorManager.textSecondaryTwo),

                SizedBox(height: 10.h),

                Text(
                  "Contact Information",
                  style: getMedium500Style20(
                    fontSize: 20.sp,
                    color: ColorManager.textPrimaryBlack,
                  ),
                ),

                SizedBox(height: 12.h),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full Name*",
                      style: getMedium500Style16(
                        fontSize: 16.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),

                    SizedBox(height: 15.h),

                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          vertical: 15.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        hintText: "Full Name",
                        hintStyle: getMedium500Style14(
                          color: ColorManager.textSecondaryTwo,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    Text(
                      "Phone Number*",
                      style: getMedium500Style16(
                        fontSize: 16.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),

                    SizedBox(height: 15.h),

                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          vertical: 15.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        hintText: "Your phone number",
                        hintStyle: getMedium500Style14(
                          color: ColorManager.textSecondaryTwo,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    Text(
                      "Email*",
                      style: getMedium500Style16(
                        fontSize: 16.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),

                    SizedBox(height: 12.h),

                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          vertical: 15.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        hintText: "Your email address",
                        hintStyle: getMedium500Style14(
                          color: ColorManager.textSecondaryTwo,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    Text(
                      "Address",
                      style: getMedium500Style16(
                        fontSize: 16.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),

                    SizedBox(height: 15.h),

                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          vertical: 15.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        hintText: "Street Address*",
                        hintStyle: getMedium500Style14(
                          color: ColorManager.textSecondaryTwo,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          vertical: 15.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        hintText: "Apt/Suite/Other (optional)",
                        hintStyle: getMedium500Style14(
                          color: ColorManager.textSecondaryTwo,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          vertical: 15.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        hintText: "City*",
                        hintStyle: getMedium500Style14(
                          color: ColorManager.textSecondaryTwo,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          vertical: 15.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        hintText: "State*",
                        hintStyle: getMedium500Style14(
                          color: ColorManager.textSecondaryTwo,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          vertical: 15.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        hintText: "Zip code*",
                        hintStyle: getMedium500Style14(
                          color: ColorManager.textSecondaryTwo,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),

                    SizedBox(height: 30.h),

                    PrimaryButton(
                      textStyle: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 16.sp,
                        fontFamily: FontConstants.fontFamilyInter,
                        fontWeight: FontWeightManager.semiBold600,
                      ),
                      containColor: AppColors.primary,
                      title: 'Save and Continue',

                      borderRadius: BorderRadius.circular(100.r),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.confirmOrderScreenRoute,
                        );
                      },
                    ),

                    SizedBox(height: 20.h),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
