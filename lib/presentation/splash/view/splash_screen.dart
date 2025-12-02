import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/resource/style_manager.dart';
import '../../../core/route/route_name.dart';
import 'widgets/loader_widget.dart';
import '../../../core/constansts/app_colors.dart';
import '../../../core/constansts/app_icons.dart';
import '../../../core/resource/font_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, RouteName.onBoadingRoute);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60.h),

            Image.asset(AppIcons.splashLogo, width: 120.w, height: 120.h),

            SizedBox(height: 10.h),

            Text(
              "Online Shopping\nMarketplace",
              textAlign: TextAlign.center,
              style: customTextStyle(
                fontFamily: FontConstants.fontFamilyInter,
                fontWeight: FontWeightManager.semiBold600,
                fontSize: 24.sp,
                color: AppColors.textColor,
              //  textColor: AppColors.textColorBlack,
              ),
            ),

            SizedBox(height: 120.h),

            const LoaderWidget(),
          ],
        ),
      ),
    );
  }
}
