import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({super.key});

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              CommonHeader(title: "Notification"),
              SizedBox(height: 20.h),
              Column(
                children: [
                  SizedBox(height: 10.h),
                  Image.asset(
                    ImageManager.notification,
                    height: 120.h,
                    width: 120.w,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 30.h),

                  Text(
                    "No notifications yet",
                    style: getSemiBold600Style20(
                      fontSize: 20.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),

                  SizedBox(height: 15.h),

                  Text(
                    "Don't worry if there's nothing to display \nyet, we'll keep you informed as soon as we \nhave updates.",
                    textAlign: TextAlign.center,
                    style: getRegular400Style16(
                      fontSize: 16.sp,
                      color: ColorManager.textSecondary,
                    ),
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
