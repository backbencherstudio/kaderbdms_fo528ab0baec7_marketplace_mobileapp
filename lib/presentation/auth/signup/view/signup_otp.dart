import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/common_pincode_field.dart';

class SignupOtp extends StatefulWidget {
  const SignupOtp({super.key});

  @override
  State<SignupOtp> createState() => SignupOtpState();
}

class SignupOtpState extends State<SignupOtp> {
  final TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 60.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Title
              Text(
                "Enter OTP",
                style: customTextStyle(
                  fontFamily: FontConstants.fontFamilyInter,
                  fontWeight: FontWeightManager.semiBold600,
                  fontSize: 24.sp,
                  color: AppColors.textColorBlack,
                ),
              ),

              SizedBox(height: 10.h),

              Text(
                "Please enter your OTP",
                style: customTextStyle(
                  fontFamily: FontConstants.fontFamilyInter,
                  fontWeight: FontWeightManager.medium500,
                  fontSize: 18.sp,
                  color: AppColors.textColorBlack,
                ),
              ),

              SizedBox(height: 30.h),

              CommonPinField(
                length: 6,
                onCompleted: (otp) {
                  print("OTP → $otp");
                },
                controller: _otpController,
              ),

              SizedBox(height: 5.h),

              PrimaryButton(
                textStyle: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16.sp,
                  fontFamily: FontConstants.fontFamilyInter,
                  fontWeight: FontWeightManager.semiBold600,
                ),
                containColor: AppColors.primary,
                title: 'Submit Now',
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.w),
                borderRadius: BorderRadius.circular(100.r),
                onTap: () {
                  Navigator.pushNamed(context, Routes.successRegistrationRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
