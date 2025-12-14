import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/circleCheckIcon.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/custom_text_field.dart';
import '../../../../core/route/route_name.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final showPasswordProvider = StateProvider<bool>((ref) => false);
final rememberMeProvider = StateProvider<bool>((ref) => false);

final emailControllerProvider = Provider.autoDispose(
  (ref) => TextEditingController(text: "test@gmail.com"),
);

final passwordControllerProvider = Provider.autoDispose(
  (ref) => TextEditingController(text: "123456"),
);

final emailErrorProvider = StateProvider<String?>((ref) => null);
final passwordErrorProvider = StateProvider<String?>((ref) => null);

class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});

  bool rememberMe = false;
  bool showPassword = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showPassword = ref.watch(showPasswordProvider);
    final rememberMe = ref.watch(rememberMeProvider);

    final emailController = ref.watch(emailControllerProvider);
    final passwordController = ref.watch(passwordControllerProvider);

    var emailError = ref.watch(emailErrorProvider);
    var passwordError = ref.watch(passwordErrorProvider);

    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),

            Text(
              "Hi! Welcome Back",
              style: getSemiBold600Style12(
                fontSize: 24.sp,
                color: ColorManager.textPrimaryBlack,
              ),
            ),

            SizedBox(height: 8.h),

            Text(
              "Log in to your account",
              style: getSemiBold600Style18(
                fontSize: 18.sp,
                color: ColorManager.textSecondary,
              ),
            ),

            SizedBox(height: 35.h),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "E-mail",
                style: getSemiBold600Style16(
                  fontSize: 16.sp,
                  color: ColorManager.textPrimaryBlack,
                ),
              ),
            ),
            SizedBox(height: 6.h),

            CustomTextField(
              prefixIcon: Image.asset(IconManager.emailIcon),
              hint: "Your email",
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              errorText: emailError,
            ),

            SizedBox(height: 6.h),

            SizedBox(
              height: 14.h,
              child: Visibility(
                visible: emailError != null,
                child: Text(
                  emailError ?? "",
                  style: TextStyle(color: Colors.red, fontSize: 12.sp),
                ),
              ),
            ),

            SizedBox(height: 15.h),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Password",
                style: getSemiBold600Style16(
                  fontSize: 16.sp,
                  color: ColorManager.textPrimaryBlack,
                ),
              ),
            ),
            SizedBox(height: 6.h),

            CustomTextField(
              prefixIcon: Padding(
                padding: EdgeInsets.all(12),
                child: Image.asset(IconManager.passwordIcon),
              ),
              hint: "Enter your password",
              controller: passwordController,
              isPassword: !showPassword,
              errorText: passwordError,
              suffixIcon: IconButton(
                icon: Icon(
                  showPassword ? Icons.visibility : Icons.visibility_off,
                ),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  ref.read(showPasswordProvider.notifier).state = !showPassword;
                },
              ),
            ),

            SizedBox(height: 6.h),

            SizedBox(
              height: 14.h,
              child: Visibility(
                visible: passwordError != null,
                child: Text(
                  passwordError ?? "",
                  style: TextStyle(color: Colors.red, fontSize: 12.sp),
                ),
              ),
            ),

            SizedBox(height: 12.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    ref.read(rememberMeProvider.notifier).state = !rememberMe;
                  },
                  child: Row(
                    children: [
                      CircleCheckIcon(
                        isChecked: rememberMe,
                        size: 18,
                        activeColor: ColorManager.forgotPasstext,
                        inactiveColor: ColorManager.defaultColor,
                        onTap: () {
                          ref.read(rememberMeProvider.notifier).state =
                              !rememberMe;
                        },
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        "Remember me",
                        style: getRegular400Style16(
                          fontSize: 16.sp,
                          color: ColorManager.textSecondaryThree,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.forgotPasswordRoute);
                  },
                  child: Text(
                    "Forgot Password?",
                    style: getRegular400Style16(
                      fontSize: 16.sp,
                      color: ColorManager.forgotPasstext,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40.h),

            PrimaryButton(
              textStyle: getSemiBold600Style16(
                color: ColorManager.textSecondary,
                fontSize: 16.sp,
              ),
              containColor: ColorManager.buttonSecondaryColor,
              title: 'Login',
              borderRadius: BorderRadius.circular(100.r),
              onTap: () {
                ref.read(emailErrorProvider.notifier).state = null;
                ref.read(passwordErrorProvider.notifier).state = null;

                if (emailController.text.trim().isEmpty) {
                  ref.read(emailErrorProvider.notifier).state =
                      "Email is required";
                }

                if (passwordController.text.trim().isEmpty) {
                  ref.read(passwordErrorProvider.notifier).state =
                      "Password is required";
                }

                final emailError = ref.read(emailErrorProvider);
                final passwordError = ref.read(passwordErrorProvider);

                if (emailError == null && passwordError == null) {
                  Navigator.pushNamed(context, RouteName.welcomeRoute);
                }
              },
            ),

            SizedBox(height: 40.h),

            Row(
              children: [
                Expanded(
                  child: Divider(color: Colors.grey.shade300, thickness: 1),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text(
                    "Or",
                    style: getMedium500Style14(
                      fontSize: 14.sp,
                      color: ColorManager.textPrimaryBlack,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(color: Colors.grey.shade300, thickness: 1),
                ),
              ],
            ),

            SizedBox(height: 40.h),

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 15.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(IconManager.google, height: 20.h),
                  SizedBox(width: 10.w),
                  Text(
                    "Continue with Google",
                    style: getMedium500Style16(
                      fontSize: 16.sp,
                      color: ColorManager.googleText,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h),

            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    RouteName.registerRoute,
                  );
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
