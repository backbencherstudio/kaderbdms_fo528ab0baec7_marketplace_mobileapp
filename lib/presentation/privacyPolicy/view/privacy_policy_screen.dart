import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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

              CommonHeader(title: "Privacy Policy"),

              SizedBox(height: 20.h),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet",
                        style: getSemiBold600Style16(
                          fontSize: 16.sp,
                          color: ColorManager.textPrimaryBlack,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        "Sed non sapien pulvinar, semper sapien nec, tincidunt tortor. Sed facilisis, leo quis dictum tincidunt, lacus magna ultricies diam, eget posuere urna nibh quis metus. Sed molestie turpis odio, gravida ultricies magna accumsan eu. Nullam efficitur gravida tellus, ac molestie dolor aliquam et. Vivamus rhoncus id elit volutpat sollicitudin. Aenean vel vulputate tortor, vitae efficitur arcu.",
                        strutStyle: StrutStyle(
                          forceStrutHeight: true,
                          height: 1.4,
                          leading: 0,
                        ),

                        style: getRegular400Style14(
                          fontSize: 14.sp,

                          color: ColorManager.textSecondary,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        "Lorem ipsum dolor sit amet",
                        style: getSemiBold600Style16(
                          fontSize: 16.sp,
                          color: ColorManager.textPrimaryBlack,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        "Sed non sapien pulvinar, semper sapien nec, tincidunt tortor. Sed facilisis, leo quis dictum tincidunt, lacus magna ultricies diam, eget posuere urna nibh quis metus. Sed molestie turpis odio, gravida ultricies magna accumsan eu. Nullam efficitur gravida tellus, ac molestie dolor aliquam et. Vivamus rhoncus id elit volutpat sollicitudin. Aenean vel vulputate tortor, vitae efficitur arcu.  Nullam efficitur gravida tellus, ac molestie dolor aliquam et. Vivamus rhoncus id elit volutpat sollicitudin. ",
                        strutStyle: StrutStyle(
                          forceStrutHeight: true,
                          height: 1.4,
                          leading: 0,
                        ),

                        style: getRegular400Style14(
                          fontSize: 14.sp,

                          color: ColorManager.textSecondary,
                        ),
                      ),
                      SizedBox(height: 10.h),

                      Text(
                        "Lorem ipsum dolor sit amet",
                        style: getSemiBold600Style16(
                          fontSize: 16.sp,
                          color: ColorManager.textPrimaryBlack,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        "Sed non sapien pulvinar, semper sapien nec, tincidunt tortor. Sed facilisis, leo quis dictum tincidunt, lacus magna ultricies diam, eget posuere urna nibh quis metus. Sed molestie turpis odio, gravida ultricies magna accumsan eu. Nullam efficitur gravida tellus, ac molestie dolor aliquam et. Vivamus rhoncus id elit volutpat sollicitudin. Aenean vel vulputate tortor, vitae efficitur arcu.",
                        strutStyle: StrutStyle(
                          forceStrutHeight: true,
                          height: 1.4,
                          leading: 0,
                        ),

                        style: getRegular400Style14(
                          fontSize: 14.sp,

                          color: ColorManager.textSecondary,
                        ),
                      ),
                    ],
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
