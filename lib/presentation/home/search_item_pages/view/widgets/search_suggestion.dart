import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/bottom_sheet/view/filter_bottom_sheet.dart';

class SearchSuggestion extends StatelessWidget {
  final String mainKeyword = "Shirt men";

  final List<String> suggestions = [
    "Shirt couple 2023",
    "Shirt women",
    "Shirt men basic",
    "Shirt white H&M",
    "Shirt basic uniqlo",
    "Shirt for a gift",
    "Shirt women short",
    "Shirt branded looks",
  ];

  void openFilterBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) =>  FilterBottomSheet(),
    );
  }

  SearchSuggestion({super.key});

  @override
  Widget build(BuildContext context) {
    final String mainLeftover = mainKeyword.replaceFirst("Shirt", "").trim();

    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        SizedBox(height: 20.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Shirt",
                  style: getRegular400Style14(
                    fontSize: 14.sp,
                    color: ColorManager.textPrimaryBlack,
                  ),
                ),
                SizedBox(width: 5.w),

                Text(
                  mainLeftover,
                  style: getMedium500Style14(
                    fontSize: 14.sp,
                    color: ColorManager.textSecondaryThree,
                  ),
                ),
              ],
            ),

            Image.asset(
              IconManager.clockwise,
              width: 17.w,
              height: 17.h,
              color: ColorManager.textSecondaryThree,
            ),
          ],
        ),

        SizedBox(height: 10.h),
        const Divider(height: 1),

        ...List.generate(suggestions.length, (index) {
          final full = suggestions[index];
          final leftover = full.replaceFirst("Shirt", "").trim();

          return Column(
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  child: Row(
                    children: [
                      Text(
                        "Shirt",
                        style: getRegular400Style14(
                          fontSize: 14.sp,
                          color: ColorManager.textPrimaryBlack,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Expanded(
                        child: Text(
                          leftover,
                          style: getMedium500Style14(
                            fontSize: 14.sp,
                            color: ColorManager.textSecondaryThree,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(height: 1),
            ],
          );
        }),

        SizedBox(height: 10.h),

        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            "Browse Categories",
            style: getMedium500Style20(
              fontSize: 20.sp,
              color: ColorManager.textPrimaryBlack,
            ),
          ),
          trailing: Image.asset(
            IconManager.vector,
            width: 17.w,
            height: 17.h,
            color: ColorManager.textSecondaryThree,
          ),
        ),

        const Divider(height: 1),

        ListTile(
          contentPadding: EdgeInsets.zero,
          title: InkWell(
            onTap: () => openFilterBottomSheet(context),
            child: Text(
              "Sort by Relevance",
              style: getMedium500Style20(
                fontSize: 20.sp,
                color: ColorManager.textPrimaryBlack,
              ),
            ),
          ),
          trailing: Image.asset(
            IconManager.vector,
            width: 17.w,
            height: 17.h,
            color: ColorManager.textSecondaryThree,
          ),
        ),
      ],
    );
  }
}
