import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  List<bool> isOpen = [false, true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),

              const CommonHeader(title: "FAQ"),

              SizedBox(height: 20.h),

              Expanded(
                child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context, index) => SizedBox(height: 18.h),
                  itemBuilder: (context, index) {
                    return _faqItem(
                      index,
                      "Lorem ipsum dolor sit amet?",

                      "Sed non sapien pulvinar, semper sapien nec, tincidunt tortor. Sed facilisis, leo quis dictum tincidunt, lacus magna ultricies diam, eget posuere urna nibh quis metus. Sed molestie turpis odio, gravida ultricies magna accumsan eu.",
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _faqItem(int index, String title, String description) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOpen[index] = !isOpen[index];
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: getSemiBold600Style16(
                    fontSize: 16.sp,
                    color: ColorManager.textPrimaryBlack,
                  ),
                ),
              ),

              Image.asset(
                isOpen[index]
                    ? "assets/icons/arrow_up.png"
                    : "assets/icons/arrow_down.png",
                width: 24.w,
                height: 24.h,
                color: ColorManager.arrowColor,
              ),
            ],
          ),

          if (isOpen[index]) ...[
            SizedBox(height: 12.h),
            Text(
              description,
              style: getRegular400Style14(
                fontSize: 14.sp,

                color: ColorManager.textSecondaryThree,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
