import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import '../../../core/resource/style_manager.dart';
import '../../../core/constansts/app_colors.dart';
import '../../../core/resource/font_manager.dart';
import '../../../core/resource/constansts/image_manager.dart';

class TopArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, 40);
    path.quadraticBezierTo(size.width / 2, -40, size.width, 40);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          SizedBox(height: 60.h),

          Text(
            "Welcome to BaakZon!",
            textAlign: TextAlign.center,
            style: getSemiBold600Style24(
              fontSize: 24.sp,
              color: ColorManager.whiteColor,
            ),
          ),

          SizedBox(height: 8.h),

          Text(
            "Your new trusted marketplace.",
            textAlign: TextAlign.center,
            style: getSemiBold600Style14(
              fontSize: 14.sp,
              color: ColorManager.whiteColor,
            ),
          ),

          SizedBox(height: 20.h),

          Image.asset(ImageManager.bannerPng),

          SizedBox(height: 20.h),

          Expanded(
            child: ClipPath(
              clipper: TopArcClipper(),
              child: Container(
                width: double.infinity,
                color: ColorManager.whiteColor,

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 40.h),

                      Text(
                        "Browse thousands of unique\nproducts and services from\nlocal sellers.",
                        textAlign: TextAlign.center,
                        style: customTextStyle(
                          fontFamily: FontConstants.fontFamilyManrope,
                          fontWeight: FontWeightManager.semiBold600,
                          fontSize: 20.sp,
                          color: ColorManager.textPrimaryBlack,
                        ),
                      ),

                      SizedBox(height: 30.h),

                      PrimaryButton(
                        textStyle: getSemiBold600Style16(
                          color: ColorManager.whiteColor,
                          fontSize: 16.sp,
                        ),
                        containColor: ColorManager.primaryColor,
                        title: 'Sign up',

                        borderRadius: BorderRadius.circular(100.r),
                        onTap: () {
                          Navigator.pushNamed(context, RouteName.registerRoute);
                        },
                      ),

                      SizedBox(height: 10.h),

                      PrimaryButton(
                        textStyle: getSemiBold600Style16(
                          color: ColorManager.textSecondaryThree,
                          fontSize: 16.sp,
                        ),
                        containColor: ColorManager.buttonSecondaryColor,
                        title: 'Log in',

                        borderRadius: BorderRadius.circular(100.r),
                        onTap: () {
                          Navigator.pushNamed(context, RouteName.loginRoute);
                        },
                      ),

                      SizedBox(height: 25.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
