import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/custom_text_field.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signin/widgets/password_requirment.dart';

import '../../../../../../core/route/route_name.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  final passwordControllerOne = TextEditingController();
  final passwordControllerTwo = TextEditingController();

  bool checkedOne = false;
  bool checkedTwo = false;
  bool checkedThree = false;
  bool showPassword = false;
  bool confirmShowPassword = false;

  @override
  void dispose() {
    passwordControllerOne.dispose();
    passwordControllerTwo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New password",
                  style: customTextStyle(
                    fontFamily: FontConstants.fontFamilyInter,
                    fontWeight: FontWeightManager.semiBold600,
                    fontSize: 24.sp,
                    color: AppColors.textColorBlack,
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  "Please enter your New Password",
                  textAlign: TextAlign.center,
                  style: customTextStyle(
                    fontFamily: FontConstants.fontFamilyInter,
                    fontWeight: FontWeightManager.medium500,
                    fontSize: 18.sp,
                    color: AppColors.secondaryTextColor,
                  ),
                ),

                SizedBox(height: 30.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style: customTextStyle(
                        fontFamily: FontConstants.fontFamilyInter,
                        fontWeight: FontWeightManager.medium500,
                        fontSize: 16.sp,
                        color: AppColors.textColorBlack,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 6.h),

                CustomTextField(
                  hint: "Enter your password",
                  style: customTextStyle(
                    fontFamily: FontConstants.fontFamilyInter,
                    fontWeight: FontWeightManager.regural400,
                    fontSize: 16.sp,
                    color: AppColors.textFieldtextColor,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12),
                    child: Image.asset("assets/icons/password.png"),
                  ),
                  controller: passwordControllerOne,
                  isPassword: !showPassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      showPassword ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.blackHeadline,
                    ),
                    onPressed: () {
                      setState(() => showPassword = !showPassword);
                    },
                  ),
                ),

                SizedBox(height: 20.h),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Confirm Password",
                      style: customTextStyle(
                        fontFamily: FontConstants.fontFamilyInter,
                        fontWeight: FontWeightManager.medium500,
                        fontSize: 16.sp,
                        color: AppColors.textColorBlack,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 6.h),

                CustomTextField(
                  hint: "Enter your password",
                  style: customTextStyle(
                    fontFamily: FontConstants.fontFamilyInter,
                    fontWeight: FontWeightManager.regural400,
                    fontSize: 16.sp,
                    color: AppColors.textFieldtextColor,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12),
                    child: Image.asset("assets/icons/password.png"),
                  ),
                  controller: passwordControllerTwo,
                  isPassword: !confirmShowPassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      confirmShowPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: AppColors.blackHeadline,
                    ),
                    onPressed: () {
                      setState(
                        () => confirmShowPassword = !confirmShowPassword,
                      );
                    },
                  ),
                ),

                SizedBox(height: 10.h),

                Column(
                  children: [
                    PasswordRequirementItem(
                      value: checkedOne,
                      onChanged: (v) => setState(() => checkedOne = v),

                      text: "Must be at least 8 characters",
                    ),

                    PasswordRequirementItem(
                      value: checkedTwo,
                      onChanged: (v) => setState(() => checkedTwo = v),

                      text: "Can’t include your name or email address",
                    ),

                    PasswordRequirementItem(
                      value: checkedThree,
                      onChanged: (v) => setState(() => checkedThree = v),

                      text: "Must have at least a symbol or number",
                    ),

                    SizedBox(height: 10.h),

                    PrimaryButton(
                      textStyle: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 16.sp,
                        fontFamily: FontConstants.fontFamilyInter,
                        fontWeight: FontWeightManager.semiBold600,
                      ),
                      containColor: AppColors.primary,
                      title: 'Submit',
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 12.w,
                      ),
                      borderRadius: BorderRadius.circular(100.r),
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.otpPageRoute);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
