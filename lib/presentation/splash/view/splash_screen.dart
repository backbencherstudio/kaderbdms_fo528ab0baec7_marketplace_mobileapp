import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import '../../../core/resource/style_manager.dart';
import '../../../core/route/route_name.dart';
import 'widgets/loader_widget.dart';

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
      backgroundColor: ColorManager.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60.h),

            Image.asset(IconManager.splashLogo, width: 120.w, height: 120.h),

            SizedBox(height: 10.h),

            Text(
              "Online Shopping\nMarketplace",
              textAlign: TextAlign.center,
              style: getSemiBold600Style24(
                fontSize: 24.sp,
                color: ColorManager.whiteColor,
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
