import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signup/view/widgets/header_section.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signup/view/widgets/footer_section.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signup/view/widgets/signup_form.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/signup/view/widgets/social_divider.dart';
import '../../../../core/route/route_name.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // Controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
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
              nameController: TextEditingController(),
              emailController: TextEditingController(),
              dateController: TextEditingController(),
              passController: TextEditingController(),
              confirmpassController: TextEditingController(),

              showPassword: showPassword,
              onTogglePassword: () {
                setState(() => showPassword = !showPassword);
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
