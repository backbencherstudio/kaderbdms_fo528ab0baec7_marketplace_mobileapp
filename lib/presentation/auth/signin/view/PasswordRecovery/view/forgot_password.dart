import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/custom_text_field.dart';
import '../../../../../../core/route/route_name.dart';

final emailControllerProvider = Provider.autoDispose(
  (ref) => TextEditingController(text: "test@gmail.com"),
);

final emailErrorProvider = StateProvider<String?>((ref) => null);

class ForgotPasswordPage extends ConsumerWidget {
  ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = ref.watch(emailControllerProvider);

    final emailError = ref.watch(emailErrorProvider);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forgot Password",
                  style: customTextStyle(
                    fontFamily: FontConstants.fontFamilyInter,
                    fontWeight: FontWeightManager.semiBold600,
                    fontSize: 24.sp,
                    color: AppColors.textColorBlack,
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  "Please enter your email address",
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
                      "E-mail",
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
                  hint: "Your email",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12),
                    child: Image.asset(
                      IconManager.emailIcon,
                      width: 22,
                      height: 22,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  style: TextStyle(),
                ),

                SizedBox(height: 6.h),

                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 14.h,
                    child: Visibility(
                      visible: emailError != null,
                      child: Text(
                        emailError ?? "",
                        style: TextStyle(color: Colors.red, fontSize: 12.sp),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20.h),

                PrimaryButton(
                  textStyle: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 16.sp,
                    fontFamily: FontConstants.fontFamilyInter,
                    fontWeight: FontWeightManager.semiBold600,
                  ),
                  containColor: AppColors.primary,
                  title: 'Submit',

                  borderRadius: BorderRadius.circular(100.r),
                  onTap: () {
                    ref.read(emailErrorProvider.notifier).state = null;

                    if (emailController.text.trim().isEmpty) {
                      ref.read(emailErrorProvider.notifier).state =
                          "Email is required";
                    }

                    final emailError = ref.read(emailErrorProvider);

                    if (emailError == null) {
                      Navigator.pushNamed(context, RouteName.newPasswordRoute);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
