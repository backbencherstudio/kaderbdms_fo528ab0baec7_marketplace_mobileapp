import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';

class CategoryScroll extends StatelessWidget {
  CategoryScroll({super.key});

  final List<Map<String, String>> categories = [
    {"image": ImageManager.categoryFashion, "title": "Fashion"},
    {"image": ImageManager.categoryJewelry, "title": "Jewelry"},
    {"image": ImageManager.categoryShoes, "title": "Shoes"},
    {"image": ImageManager.categoryElectronics, "title": "Electronics"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,

        itemBuilder: (context, index) {
          final item = categories[index];
          return Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Column(
              children: [
                Container(
                  height: 65.w,
                  width: 65.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade200,
                    image: DecorationImage(
                      image: AssetImage(item["image"]!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  item["title"]!,
                  style: getMedium500Style14(
                    color: ColorManager.textPrimaryBlack,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
