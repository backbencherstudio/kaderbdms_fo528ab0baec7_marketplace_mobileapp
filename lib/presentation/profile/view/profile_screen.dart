import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/profile/view/widgets/setting_row.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key});

  @override
  State<ProfilePageScreen> createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
            ),
            height: 170.h,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 70.w,
                        width: 70.w,
                        decoration: const BoxDecoration(
                          color: AppColors.innerCircleColor,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "JB",
                          style: getBold700Style28(
                            fontWeight: FontWeightManager.bold700,
                            fontSize: 28.sp,
                            color: AppColors.innerCircleTextColor,
                          ),
                        ),
                      ),

                      SizedBox(width: 12.w),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 50.h),
                          Text(
                            "Jonathan Bustos",
                            style: getSemiBold600Style18(
                              fontWeight: FontWeightManager.semiBold600,
                              fontSize: 18.sp,
                              color: AppColors.onPrimary,
                            ),
                          ),

                          SizedBox(height: 5.h),

                          Text(
                            "jontahanbustos@gmail.com",
                            style: getRegular400Style12(
                              fontWeight: FontWeightManager.regural400,
                              fontSize: 12.sp,
                              color: AppColors.onPrimary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RouteName.editProfileRoute,
                        );
                        //  Navigator.pushNamed(context, RouteName.forgotPasswordRoute);
                      },
                      child: Image.asset(
                        "assets/icons/edit.png",
                        color: AppColors.whiteTextColor,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20.h),

          SettingRowList(
            iconPath: "assets/icons/order.png",
            title: "My Orders",
            onTap: () {},
          ),

          SizedBox(height: 5.h),

          SettingRowList(
            iconPath: "assets/icons/notification.png",
            title: "Notification",
            onTap: () {},
          ),

          SizedBox(height: 5.h),

          SettingRowList(
            iconPath: "assets/icons/wish.png",
            title: "Wishlist",
            onTap: () {},
          ),

          SizedBox(height: 5.h),

          SettingRowList(
            iconPath: "assets/icons/faq.png",
            title: "Frequently Asked Questions",
            onTap: () {},
          ),

          SizedBox(height: 5.h),

          SettingRowList(
            iconPath: "assets/icons/order.png",
            title: "Terms of Use",
            onTap: () {},
          ),

          SizedBox(height: 5.h),

          SettingRowList(
            iconPath: "assets/icons/privacy.png",
            title: "Privacy Policy",
            onTap: () {},
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 15.h),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/icons/logout.png", width: 22.w),
                      SizedBox(width: 10.w),
                      Text(
                        "Log Out",
                        style: getMedium500Style14(
                          fontWeight: FontWeightManager.medium500,
                          fontSize: 14.sp,
                          color: ColorManager.logoutText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
