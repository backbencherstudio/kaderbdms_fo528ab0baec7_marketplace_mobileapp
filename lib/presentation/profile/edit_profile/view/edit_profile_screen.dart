import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/auth/common/widgets/custom_text_field.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';

final nameControllerProvider = Provider.autoDispose(
  (ref) => TextEditingController(),
);

final phoneControllerProvider = Provider.autoDispose(
  (ref) => TextEditingController(),
);

final emailControllerProvider = Provider.autoDispose(
  (ref) => TextEditingController(),
);

final addressControllerProvider = Provider.autoDispose(
  (ref) => TextEditingController(),
);

// ignore: camel_case_types
class editProfileScreen extends ConsumerWidget {
  const editProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = ref.watch(nameControllerProvider);
    final phoneController = ref.watch(phoneControllerProvider);
    final emailController = ref.watch(emailControllerProvider);
    final addressController = ref.watch(addressControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonHeader(title: 'Edit Profile'),
              SizedBox(height: 25),
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: AppColors.innerCircleColor,
                      child: Text(
                        "JB",
                        style: getBold700Style39(
                          fontWeight: FontWeightManager.bold700,
                          fontSize: 39.sp,
                          color: AppColors.innerCircleTextColor,
                        ),
                      ),
                    ),

                    Positioned(
                      right: -5,
                      top: 60,
                      child: GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            "assets/icons/camera.png",
                            width: 50.w,
                            height: 50.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),

              Text(
                "Contact Information",
                style: getMedium500Style20(
                  fontWeight: FontWeightManager.medium500,
                  fontSize: 20.sp,
                  color: AppColors.textColorBlack,
                ),
              ),
              SizedBox(height: 20.h),

              Text(
                "Full Name*",
                style: getMedium500Style16(
                  fontWeight: FontWeightManager.medium500,
                  fontSize: 16.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
              SizedBox(height: 15.h),

              CustomTextField(
                hint: "Full Name",
                borderRadius: 10,
                controller: nameController,
                style: getMedium500Style14(
                  fontWeight: FontWeightManager.medium500,
                  fontSize: 14.sp,
                  color: ColorManager.fieldText,
                ),
              ),

              SizedBox(height: 15.h),

              Text(
                "Phone Number*",
                style: getMedium500Style16(
                  fontWeight: FontWeightManager.medium500,
                  fontSize: 16.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
              SizedBox(height: 15.h),

              CustomTextField(
                hint: "Your Phone Number",
                borderRadius: 10,
                controller: phoneController,
                style: getMedium500Style14(
                  fontWeight: FontWeightManager.medium500,
                  fontSize: 14.sp,
                  color: ColorManager.fieldText,
                ),
              ),

              SizedBox(height: 15.h),

              Text(
                "Email*",
                style: getMedium500Style16(
                  fontWeight: FontWeightManager.medium500,
                  fontSize: 16.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
              SizedBox(height: 15.h),

              CustomTextField(
                hint: "Your Email Address",
                borderRadius: 10,
                controller: emailController,
                style: getMedium500Style14(
                  fontWeight: FontWeightManager.medium500,
                  fontSize: 14.sp,
                  color: ColorManager.fieldText,
                ),
              ),

              SizedBox(height: 15.h),

              Text(
                "Address",
                style: getMedium500Style16(
                  fontWeight: FontWeightManager.medium500,
                  fontSize: 16.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
              SizedBox(height: 15.h),

              CustomTextField(
                hint: "Your Address",
                borderRadius: 10,
                controller: addressController,
                style: getMedium500Style14(
                  fontWeight: FontWeightManager.medium500,
                  fontSize: 14.sp,
                  color: ColorManager.fieldText,
                ),
              ),

              SizedBox(height: 70.h),

              PrimaryButton(
                textStyle: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16.sp,
                  fontFamily: FontConstants.fontFamilyInter,
                  fontWeight: FontWeightManager.semiBold600,
                ),
                containColor: AppColors.primary,
                title: 'Save',
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 14.w),
                borderRadius: BorderRadius.circular(100.r),
                onTap: () {
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
