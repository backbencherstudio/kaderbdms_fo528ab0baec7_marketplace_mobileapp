import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/CircleCheckIcon.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool rememberMe = false;
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),

            Text(
              "Hi! Welcome Back",
              style: getSemiBoldStyle(
                fontFamily: FontConstants.fontFamilyInter,
                fontWeight: FontWeightManager.semiBold600,
                fontSize: 24.sp,
                color: AppColors.textColorBlack,
              ),
            ),

            SizedBox(height: 8.h),

            Text(
              "Log in to your account",
              style: getSemiBoldStyle(
                fontFamily: FontConstants.fontFamilyInter,
                fontWeight: FontWeightManager.medium500,
                fontSize: 18.sp,
                color: AppColors.secondaryTextColor,
              ),
            ),

            SizedBox(height: 35.h),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "E-mail",
                style: getSemiBoldStyle(
                  fontFamily: FontConstants.fontFamilyInter,
                  fontWeight: FontWeightManager.medium500,
                  fontSize: 16.sp,
                  color: AppColors.textColorBlack,
                ),
              ),
            ),
            SizedBox(height: 6.h),

            CustomTextField(
              prefixIcon: Image.asset("assets/icons/email.png"),

              hint: "Your email",
              style: customTextStyle(
                fontFamily: FontConstants.fontFamilyInter,
                fontWeight: FontWeightManager.regural400,
                fontSize: 16.sp,
                color: AppColors.textFieldtextColor,
              ),

              keyboardType: TextInputType.emailAddress,
              controller: emailController,
            ),

            SizedBox(height: 15.h),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Password",
                style: customTextStyle(
                  fontFamily: FontConstants.fontFamilyInter,
                  fontWeight: FontWeightManager.regural400,
                  fontSize: 16.sp,
                  color: AppColors.textColorBlack,
                ),
              ),
            ),
            SizedBox(height: 6.h),

            CustomTextField(
              prefixIcon: Padding(
                padding: EdgeInsets.all(12),
                child: Image.asset("assets/icons/password.png"),
              ),

              hint: "Enter your password",
              style: customTextStyle(
                fontFamily: FontConstants.fontFamilyInter,
                fontWeight: FontWeightManager.medium500,
                fontSize: 16.sp,
                color: AppColors.textFieldtextColor,
              ),

              controller: passwordController,
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

            SizedBox(height: 12.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleCheckIcon(
                      isChecked: rememberMe,
                      size: 13,
                      activeColor: AppColors.fotgotpassText,
                      inactiveColor: AppColors.defaultColor,
                      onTap: () {
                        setState(() {
                          rememberMe = !rememberMe;
                        });
                      },
                    ),

                    SizedBox(width: 3.w),
                    Text(
                      "Remember me",
                      style: customTextStyle(
                        fontFamily: FontConstants.fontFamilyInter,
                        fontWeight: FontWeightManager.regural400,
                        fontSize: 16.sp,
                        color: AppColors.textFieldtextColor,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.forgotPasswordRoute);
                  },
                  child: Text(
                    "Forgot Password?",
                    style: customTextStyle(
                      fontFamily: FontConstants.fontFamilyInter,
                      fontWeight: FontWeightManager.regural400,
                      fontSize: 16.sp,
                      color: AppColors.fotgotpassText,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 25.h),

            PrimaryButton(
              textStyle: TextStyle(
                color: AppColors.secondaryTextColor,
                fontSize: 16.sp,
                fontFamily: FontConstants.fontFamilyInter,
                fontWeight: FontWeightManager.semiBold600,
              ),
              containColor: AppColors.buttonColorNoHover,
              title: 'Login',
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.w),
              borderRadius: BorderRadius.circular(100.r),
              onTap: () {
                Navigator.pushNamed(context, Routes.welcomeRoute);
              },
            ),

            SizedBox(height: 25.h),

            Row(
              children: [
                Expanded(
                  child: Divider(color: Colors.grey.shade300, thickness: 1),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text(
                    "Or",
                    style: customTextStyle(
                      fontFamily: FontConstants.fontFamilyInter,
                      fontWeight: FontWeightManager.medium500,
                      fontSize: 14.sp,
                      color: AppColors.textColorBlack,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(color: Colors.grey.shade300, thickness: 1),
                ),
              ],
            ),

            SizedBox(height: 25.h),

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 12.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/google.png", height: 20.h),
                  SizedBox(width: 10.w),
                  Text(
                    "Continue with Google",
                    style: customTextStyle(
                      fontFamily: FontConstants.fontFamilyInter,
                      fontWeight: FontWeightManager.medium500,
                      fontSize: 16.sp,
                      color: AppColors.conGoogleText,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h),

            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.registerRoute);
                },
                child: RichText(
                  text: TextSpan(
                    text: "Don’t have an account? ",
                    style: customTextStyle(
                      fontFamily: FontConstants.fontFamilyInter,
                      fontWeight: FontWeightManager.medium500,
                      fontSize: 16.sp,
                      color: AppColors.secondaryTextColor,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign Up",
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
            ),
          ],
        ),
      ),
    );
  }
}
