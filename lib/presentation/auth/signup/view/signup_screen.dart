import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signup/view/widgets/header_section.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signup/view/widgets/footer_section.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signup/view/widgets/signup_form.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signup/view/widgets/social_divider.dart';
import 'package:riverpod/legacy.dart';
import '../../../../core/route/route_name.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameColtrollerProvider = Provider.autoDispose(
  (ref) => TextEditingController(text: "test"),
);

final emailControllerProvider = Provider.autoDispose(
  (ref) => TextEditingController(text: "test@gmail.com"),
);

final dateControllerProvider = Provider.autoDispose(
  (ref) => TextEditingController(),
);

final passControllerProvider = Provider.autoDispose(
  (ref) => TextEditingController(text: "123456"),
);

final confirmpassProvider = Provider.autoDispose(
  (ref) => TextEditingController(text: "123456"),
);

final showPasswordProvider = StateProvider<bool>((ref) => false);
final confirmPasswordProvider = StateProvider<bool>((ref) => false);

final nameErrorProvider = StateProvider<String?>((ref) => null);
final emailErrorProvider = StateProvider<String?>((ref) => null);
final passwordErrorProvider = StateProvider<String?>((ref) => null);
final confirmPasswordErrorProvider = StateProvider<String?>((ref) => null);

class SignupScreen extends ConsumerWidget {
  SignupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = ref.watch(nameColtrollerProvider);
    final emailController = ref.watch(emailControllerProvider);
    final dateController = ref.watch(dateControllerProvider);
    final passController = ref.watch(passControllerProvider);
    final confirmPassController = ref.watch(confirmpassProvider);
    final showPassword = ref.watch(showPasswordProvider);
    final confirmshowPassword = ref.watch(confirmPasswordProvider);
    final nameError = ref.watch(nameErrorProvider);
    final emailError = ref.watch(emailErrorProvider);
    final passwordError = ref.watch(passwordErrorProvider);
    final confirmPasswordError = ref.watch(confirmPasswordErrorProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            const HeaderSection(),
            SizedBox(height: 25.h),
            SignupForm(
              nameController: nameController,
              emailController: emailController,
              dateController: dateController,
              passController: passController,
              confirmpassController: confirmPassController,
              showPassword: showPassword,

              nameError: nameError,
              emailError: emailError,
              passwordError: passwordError,
              confirmPasswordError: confirmPasswordError,
              onTogglePassword: () {
                ref.read(showPasswordProvider.notifier).state = !ref.read(
                  showPasswordProvider,
                );
              },
              confirmshowPassword: confirmshowPassword,
              onconfirmTogglePassword: () {
                ref.read(confirmPasswordProvider.notifier).state = !ref.read(
                  confirmPasswordProvider,
                );
              },
            ),
            SizedBox(height: 20.h),
            PrimaryButton(
              title: "Continue",
              containColor: AppColors.primary,
              textStyle: TextStyle(
                color: AppColors.textColor,
                fontSize: 16.sp,
                fontFamily: FontConstants.fontFamilyInter,
                fontWeight: FontWeightManager.semiBold600,
              ),
              borderRadius: BorderRadius.circular(100.r),
              padding: EdgeInsets.symmetric(vertical: 15.h),
              onTap: () {
                // Navigator.pushNamed(context, RouteName.signupOtpRoute);
                ref.read(nameErrorProvider.notifier).state = null;
                ref.read(emailErrorProvider.notifier).state = null;
                ref.read(passwordErrorProvider.notifier).state = null;
                ref.read(confirmPasswordErrorProvider.notifier).state = null;

                // validations
                if (nameController.text.trim().isEmpty) {
                  ref.read(nameErrorProvider.notifier).state =
                      "Name is required";
                }

                if (emailController.text.trim().isEmpty) {
                  ref.read(emailErrorProvider.notifier).state =
                      "Email is required";
                }

                if (passController.text.trim().isEmpty) {
                  ref.read(passwordErrorProvider.notifier).state =
                      "Password is required";
                }

                if (confirmPassController.text.trim().isEmpty) {
                  ref.read(confirmPasswordErrorProvider.notifier).state =
                      "Confirm password is required";
                } else if (passController.text.trim() !=
                    confirmPassController.text.trim()) {
                  ref.read(confirmPasswordErrorProvider.notifier).state =
                      "Password does not match";
                }

                // read final state
                final nameError = ref.read(nameErrorProvider);
                final emailError = ref.read(emailErrorProvider);
                final passwordError = ref.read(passwordErrorProvider);
                final confirmPasswordError = ref.read(
                  confirmPasswordErrorProvider,
                );

                // success
                if (nameError == null &&
                    emailError == null &&
                    passwordError == null &&
                    confirmPasswordError == null) {
                  Navigator.pushNamed(context, RouteName.signupOtpRoute);
                }
              },
            ),
            SizedBox(height: 25.h),
            const SocialLoginSection(),
            SizedBox(height: 25.h),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
