import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20.h),

              Row(
                children: [
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

                  SizedBox(width: 10.w),

                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(IconManager.plxLogo),
                      ),

                      SizedBox(width: 10.w),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PLX",
                            style: getBold700Style16(
                              fontSize: 16.sp,
                              color: ColorManager.textPrimaryBlack,
                            ),
                          ),

                          SizedBox(height: 5.h),

                          Text(
                            "Fashion Expertise",
                            style: getRegular400Style12(
                              fontSize: 12.sp,
                              color: ColorManager.textSecondaryThree,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "08:00 am",
                  style: getRegular400Style12(
                    fontSize: 12.sp,
                    color: ColorManager.textSecondaryTwo,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
