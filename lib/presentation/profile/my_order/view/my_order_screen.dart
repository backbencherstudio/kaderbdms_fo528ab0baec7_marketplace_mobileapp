import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/profile/my_order/view/widgets/order_card.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
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

              CommonHeader(title: "My Orders"),

              SizedBox(height: 20.h),
              Text(
                "Item Details",
                style: getMedium500Style20(
                  fontWeight: FontWeightManager.medium500,
                  fontSize: 20.sp,
                  color: ColorManager.textPrimaryBlack,
                ),
              ),

              SizedBox(height: 15.h),

              const orderCard(),

              SizedBox(height: 15.h),

              const orderCard(),

              SizedBox(height: 15.h),

              const orderCard(),
            ],
          ),
        ),
      ),
    );
  }
}
