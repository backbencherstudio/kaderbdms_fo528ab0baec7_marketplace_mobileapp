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
  (ref) => TextEditingController(),
);

final emailControllerProvider = Provider.autoDispose(
  (ref) => TextEditingController(),
);

final dateControllerProvider = Provider.autoDispose(
  (ref) => TextEditingController(),
);

final passControllerProvider = Provider.autoDispose(
  (ref) => TextEditingController(),
);

final confirmpassProvider = Provider.autoDispose(
  (ref) => TextEditingController(),
);

final showPasswordProvider = StateProvider<bool>((ref) => false);
final confirmPasswordProvider = StateProvider<bool>((ref) => false);

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
              padding: EdgeInsets.symmetric(vertical: 12.h),
              onTap: () {
                Navigator.pushNamed(context, RouteName.signupOtpRoute);
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
