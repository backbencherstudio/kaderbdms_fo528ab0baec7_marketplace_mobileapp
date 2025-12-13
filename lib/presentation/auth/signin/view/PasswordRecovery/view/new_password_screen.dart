import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/custom_text_field.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signin/widgets/password_requirment.dart';
import '../../../../../../core/route/route_name.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final passwordControllerOneProvider = Provider.autoDispose(
  (ref) => TextEditingController(),
);

final passwordControllerTwoProvider = Provider.autoDispose(
  (ref) => TextEditingController(),
);

final checkedOneProvider = StateProvider<bool>((ref) => false);
final checkedTwoProvider = StateProvider<bool>((ref) => false);
final checkedThreeProvider = StateProvider<bool>((ref) => false);
final showPasswordProvider = StateProvider<bool>((ref) => false);
final confirmShowPasswordProvider = StateProvider<bool>((ref) => false);

class NewPasswordPage extends ConsumerWidget {
  const NewPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordControllerOne = ref.watch(passwordControllerOneProvider);
    final passwordControllerTwo = ref.watch(passwordControllerTwoProvider);
    final checkedOne = ref.watch(checkedOneProvider);
    final checkedTwo = ref.watch(checkedTwoProvider);
    final checkedThree = ref.watch(checkedThreeProvider);
    final showPassword = ref.watch(showPasswordProvider);
    final confirmShowPassword = ref.watch(confirmShowPasswordProvider);
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
                    child: Image.asset(IconManager.passwordIcon),
                  ),
                  controller: passwordControllerOne,
                  isPassword: !showPassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      showPassword ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.blackHeadline,
                    ),
                    onPressed: () {
                      ref.read(showPasswordProvider.notifier).state =
                          !showPassword;
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
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
                    child: Image.asset(IconManager.passwordIcon),
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
                      ref.read(confirmShowPasswordProvider.notifier).state =
                          !confirmShowPassword;
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                ),

                SizedBox(height: 10.h),

                Column(
                  children: [
                    PasswordRequirementItem(
                      value: checkedOne,
                      onChanged: (v) {
                        ref.read(checkedOneProvider.notifier).state = v;
                      },

                      text: "Must be at least 8 characters",
                    ),

                    PasswordRequirementItem(
                      value: checkedTwo,
                      onChanged: (v) {
                        ref.read(checkedTwoProvider.notifier).state = v;
                      },

                      text: "Can’t include your name or email address",
                    ),

                    PasswordRequirementItem(
                      value: checkedThree,
                      onChanged: (v) {
                        ref.read(checkedThreeProvider.notifier).state = v;
                      },

                      text: "Must have at least a symbol or number",
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
