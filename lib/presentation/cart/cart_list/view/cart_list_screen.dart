import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';

class CartListScreen extends StatefulWidget {
  const CartListScreen({super.key});

  @override
  State<CartListScreen> createState() => _CartListScreenState();
}

class _CartListScreenState extends State<CartListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              CommonHeader(title: "Cart"),

              SizedBox(height: 20.h),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h),
                  Image.asset(
                    ImageManager.cartList,
                    height: 140.h,
                    width: 140.w,
                    fit: BoxFit.contain,
                  ),

                  SizedBox(height: 20.h),

                  Text(
                    "Nothing in Your Cart?",
                    style: getSemiBold600Style20(
                      fontSize: 20.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),

                  SizedBox(height: 10.h),

                  Text(
                    "That's okay, take your time and browse \nthrough our products until you find what \nyou're looking for.",
                    textAlign: TextAlign.center,
                    strutStyle: StrutStyle(height: 1.5.h),
                    style: getRegular400Style16(
                      fontSize: 16.sp,
                      color: ColorManager.textbackgroundColor,
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
