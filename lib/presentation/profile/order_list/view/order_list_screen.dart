import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({super.key});

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              CommonHeader(title: "My Orders"),
              SizedBox(height: 20.h),
              Column(
                children: [
                  SizedBox(height: 10.h),
                  Image.asset(
                    ImageManager.orderCarPng,
                    height: 130.h,
                    width: 130.w,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 30.h),

                  Text(
                    "No Orders Yet",
                    style: getSemiBold600Style20(
                      fontSize: 20.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),

                  SizedBox(height: 20.h),

                  Text(
                    "You don't have a shipped order yet",
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
