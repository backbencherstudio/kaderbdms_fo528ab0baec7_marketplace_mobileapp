import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/profile/view/widgets/log_out_popUp.dart';
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
                      },
                      child: Image.asset(
                        IconManager.edit,
                        color: AppColors.whiteTextColor,
                        width: 25.w,
                        height: 25.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20.h),

          SettingRowList(
            iconPath: IconManager.order,
            title: "My Orders",
            onTap: () {
              Navigator.pushNamed(context, RouteName.myordersRoute);
            },
          ),

          SizedBox(height: 5.h),

          SettingRowList(
            iconPath: IconManager.notification,
            title: "Notification",
            onTap: () {
              Navigator.pushNamed(context, RouteName.notificationSettingRoute);
            },
          ),

          SizedBox(height: 5.h),

          SettingRowList(
            iconPath: IconManager.wish,
            title: "Wishlist",
            onTap: () {
              Navigator.pushNamed(context, RouteName.wishListScreenRoute);
            },
          ),

          SizedBox(height: 5.h),

          SettingRowList(
            iconPath: IconManager.faq,
            title: "Frequently Asked Questions",
            onTap: () {
              Navigator.pushNamed(context, RouteName.faqScreenRoute);
            },
          ),

          SizedBox(height: 5.h),

          SettingRowList(
            iconPath: IconManager.order,
            title: "Terms of Use",
            onTap: () {
              Navigator.pushNamed(context, RouteName.termsofuseScreenRoute);
            },
          ),

          SizedBox(height: 5.h),

          SettingRowList(
            iconPath: IconManager.privacy,
            title: "Privacy Policy",
            onTap: () {
              Navigator.pushNamed(context, RouteName.privacyPolicyScreenRoute);
            },
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 15.h),
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return LogoutDialog(
                      onConfirm: () {
                        Navigator.pushNamed(context, RouteName.loginRoute);
                      },
                    );
                  },
                );
              },
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
