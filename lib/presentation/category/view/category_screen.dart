import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/common_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/custom_search_bar.dart';

final selectedIndexProvider = StateProvider<int>((ref) => 0);

class CategoryScreen extends ConsumerWidget {
  CategoryScreen({super.key});

  final List<String> categories = [
    "Fashion",
    "Toys & Hobbies",
    "Jewelry",
    "Shoes",
    "Accessories",
    "Electronics",
    "Mother & Kids",
    "Tools",
    "Business Card Design",
    "Women’s",
    "Home Cleaning",
    "Beauty & Health",
  ];

  final List<Map<String, dynamic>> fashionItems = [
    {"title": "Dresses & Gowns", "image": ImageManager.cShirt},
    {"title": "Coats & Jackets", "image": ImageManager.cJacket},
    {"title": "Jeans & Denim", "image": ImageManager.cDenim},
    {"title": "Tops & Blouses", "image": ImageManager.cTops},
    {"title": "Lingerie & Sleepwear", "image": ImageManager.cSleepwear},
    {"title": "Skirts & Shorts", "image": ImageManager.cSkirts},
    {"title": "Maternity Wear", "image": ImageManager.cMaternity},
    {"title": "T-Shirts & Polos", "image": ImageManager.cPolo},
    {"title": "Formal Suits", "image": ImageManager.cSuits},
    {"title": "Shorts & Swimwear", "image": ImageManager.cShorts},
    {"title": "Underwear & Socks", "image": ImageManager.cUnderwear},
    {"title": "Jeans & Trousers", "image": ImageManager.cJeans},
    {"title": "Casual Shirts", "image": ImageManager.cCasualshirt},
    {"title": "Belts, Hats", "image": ImageManager.cBelts},
    {"title": "Handbags & Wallets", "image": ImageManager.cHandbags},
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CommonHeader(
                onTap: () {
                  Navigator.pop(context, RouteName.bottomNavBar);
                },
                title: "Categories",
              ),
            ),

            SizedBox(height: 10.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomSearchBar(hint: "Search Products or services"),
            ),

            SizedBox(height: 20.h),

            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 95.w,
                    decoration: BoxDecoration(
                      color: ColorManager.backgroundColor,
                    ),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            ref.read(selectedIndexProvider.notifier).state =
                                index;
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 12.h,
                              horizontal: 10.w,
                            ),
                            decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? ColorManager.primaryColor
                                  : Colors.transparent,
                            ),
                            child: Text(
                              categories[index],
                              style: getMedium500Style14(
                                fontSize: 14.sp,
                                color: selectedIndex == index
                                    ? ColorManager.whiteColor
                                    : ColorManager.textPrimaryBlack,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            categories[selectedIndex],
                            style: getSemiBold600Style20(
                              fontSize: 20.sp,

                              color: ColorManager.textPrimaryBlack,
                            ),
                          ),
                          SizedBox(height: 15.h),
                          Expanded(
                            child: GridView.builder(
                              itemCount: fashionItems.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 15,
                                    crossAxisSpacing: 20,
                                    childAspectRatio: 0.8,
                                  ),
                              itemBuilder: (context, index) {
                                final item = fashionItems[index];
                                return Column(
                                  children: [
                                    Container(
                                      height: 60.h,
                                      width: 60.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.grey.shade300,
                                        ),
                                      ),
                                      child: ClipOval(
                                        child: Image.asset(
                                          item["image"],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 6.h),
                                    Text(
                                      item["title"],
                                      textAlign: TextAlign.center,
                                      style: getSemiBold600Style12(
                                        fontSize: 12.sp,
                                        color: ColorManager.categoryTextColor,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
