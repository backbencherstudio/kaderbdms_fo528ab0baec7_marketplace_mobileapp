import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/profile/order_details/view/widgets/custom_button.dart';

class LogoutDialog extends StatelessWidget {
  final VoidCallback onConfirm;

  const LogoutDialog({super.key, required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Title Row
            Row(
              children: [
                Image.asset(
                  IconManager.logout,
                  width: 26.w,
                  color: ColorManager.logoutText,
                ),
                SizedBox(width: 10.w),
                Text(
                  "Logout?",
                  style: getSemiBold600Style18(
                    fontWeight: FontWeightManager.semiBold600,
                    fontSize: 18.sp,
                    color: ColorManager.textPrimaryBlack,
                  ),
                ),
              ],
            ),

            SizedBox(height: 15.h),

            Text(
              "You are attempting to log out of BaakZon.\nAre you sure want to logout?",
              strutStyle: StrutStyle(height: 2),
              style: getRegular400Style14(
                fontWeight: FontWeightManager.regural400,
                fontSize: 14.sp,
                color: ColorManager.textSecondary,
              ),
            ),

            SizedBox(height: 25.h),

            Row(
              children: [
                CustomButton(
                  text: "Cancel",
                  bgColor: ColorManager.buttonSecondaryColor,
                  textColor: ColorManager.textSecondaryThree,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),

                SizedBox(width: 12.w),

                CustomButton(
                  text: "Logout",
                  bgColor: ColorManager.primaryColor,
                  textColor: Colors.white,
                  onTap: () {
                    Navigator.pop(context);
                    onConfirm();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
