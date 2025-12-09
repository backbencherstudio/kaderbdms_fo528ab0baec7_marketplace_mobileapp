import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';

class OrderPlaceScreen extends StatefulWidget {
  const OrderPlaceScreen({super.key});

  @override
  State<OrderPlaceScreen> createState() => _OrderPlaceScreenState();
}

class _OrderPlaceScreenState extends State<OrderPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  IconManager.arrowLeft,
                  height: 32.h,
                  width: 32.w,
                ),
              ),

              SizedBox(height: 30.h),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageManager.orderPlace,
                    height: 130.h,
                    width: 1300.w,
                    fit: BoxFit.contain,
                  ),

                  SizedBox(height: 20.h),

                  Text(
                    "Order Placed!",
                    style: getSemiBold600Style20(
                      fontSize: 20.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),

                  SizedBox(height: 15.h),

                  Text(
                    "Your order has been successfully \nprocessed and is on its way to you soon.",
                    textAlign: TextAlign.center,
                    strutStyle: StrutStyle(height: 1.5.h),
                    style: getRegular400Style16(
                      fontSize: 16.sp,
                      color: ColorManager.textSecondaryTwo,
                    ),
                  ),

                  SizedBox(height: 320.h),

                  PrimaryButton(
                    textStyle: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 16.sp,
                      fontFamily: FontConstants.fontFamilyInter,
                      fontWeight: FontWeightManager.semiBold600,
                    ),
                    containColor: AppColors.primary,
                    title: 'My Order Detail',

                    borderRadius: BorderRadius.circular(100.r),
                    onTap: () {},
                  ),

                  SizedBox(height: 10.h),

                  PrimaryButton(
                    textStyle: TextStyle(
                      color: ColorManager.primaryColor,
                      fontSize: 16.sp,
                      fontFamily: FontConstants.fontFamilyInter,
                      fontWeight: FontWeightManager.semiBold600,
                    ),
                    containColor: ColorManager.whiteColor,
                    title: 'Continue Shopping',

                    borderRadius: BorderRadius.circular(100.r),
                    borderColor: ColorManager.primaryColor,

                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
