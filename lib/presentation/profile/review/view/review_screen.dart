// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
// import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
// import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';

// class ReviewScreen extends StatelessWidget {
//   const ReviewScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             children: [
//               SizedBox(height: 20.h),
//               CommonHeader(title: 'Reviews'),
//               SizedBox(height: 20.h),
//               Column(
//                 children: [
//                   Text(
//                     "Give ratings",
//                     style: getMedium500Style18(
//                       color: ColorManager.textPrimaryBlack,
//                     ),
//                   ),
//                   SizedBox(height: 10.h),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/constansts/app_colors.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/font_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/Onboarding/widgets/custom_button.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),

              const CommonHeader(title: 'Reviews'),

              SizedBox(height: 25.h),

              Text(
                "Give ratings",
                style: getMedium500Style18(
                  fontSize: 18.sp,
                  color: ColorManager.textPrimaryBlack,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 15.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (i) => Icon(
                    Icons.star_border,
                    size: 32.sp,
                    color: ColorManager.fieldText,
                  ),
                ),
              ),

              SizedBox(height: 25.h),

              Text(
                "Add a detailed review",
                style: getMedium500Style18(
                  fontSize: 18.sp,
                  color: ColorManager.textPrimaryBlack,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 5.h),
              Container(
                height: 130.h,
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: TextField(
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,

                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorManager.textFieldInnerColor,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide.none,
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide.none,
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide.none,
                    ),

                    hintText: "Write here...",
                    hintStyle: getRegular400Style14(
                      color: const Color.fromARGB(255, 143, 149, 155),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              PrimaryButton(
                title: "Send",
                containColor: AppColors.primary,
                textStyle: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16.sp,
                  fontFamily: FontConstants.fontFamilyInter,
                  fontWeight: FontWeightManager.semiBold600,
                ),
                borderRadius: BorderRadius.circular(100.r),

                onTap: () {
                  Navigator.pushNamed(context, RouteName.orderListRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
