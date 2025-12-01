import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_manager.dart';

class FooterSection extends StatelessWidget {
  const FooterSection();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, Routes.loginRoute);
        },
        child: RichText(
          text: TextSpan(
            text: "Already have an account? ",
            style: customTextStyle(
              fontFamily: FontConstants.fontFamilyInter,
              fontWeight: FontWeightManager.medium500,
              fontSize: 16.sp,
              color: AppColors.secondaryTextColor,
            ),
            children: [
              TextSpan(
                text: "Login",
                style: customTextStyle(
                  fontFamily: FontConstants.fontFamilyInter,
                  fontWeight: FontWeightManager.regural400,
                  fontSize: 16.sp,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
