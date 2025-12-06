import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/color_manger.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/icon_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/constansts/image_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/resource/style_manager.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/core/route/route_name.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/product_card.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/common_widget/product_sell_card.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/home/view/widgets/banner.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/home/view/widgets/category_scroll.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/home/view/widgets/home_header.dart';
import 'package:kaderbdms_fo528ab0baec7_marketplace_mobileapp/presentation/home/view/widgets/search_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              SizedBox(height: 10.h),

              SearchBarWidget(),
              SizedBox(height: 10.h),

              BannerWidget(),
              SizedBox(height: 20.h),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: getSemiBold600Style20(
                            fontSize: 20.sp,
                            color: ColorManager.textPrimaryBlack,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "See All",
                            style: getMedium500Style14(
                              fontSize: 14.sp,
                              color: ColorManager.textSecondary,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.h),

                    CategoryScroll(),
                    SizedBox(height: 20.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Fashion",
                          style: getSemiBold600Style20(
                            fontSize: 20.sp,
                            color: ColorManager.textPrimaryBlack,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RouteName.fashionScreenRoute,
                            );
                          },
                          child: Image.asset(IconManager.arrowRight),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.h),

                    Row(
                      children: [
                        Expanded(
                          child: ProductSellCard(
                            imagePath: ImageManager.longSweters,
                            title: "Long Sweters",
                            sellCount: "254 sold",
                            price: "€321.99",
                            rating: "4.9",
                            onCartTap: () {},
                            onLikeTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                            isLiked: isLiked,
                          ),
                        ),
                        Expanded(
                          child: ProductSellCard(
                            imagePath: ImageManager.blueShoes,
                            title: "Blue Shoes",
                            sellCount: "54 sold",
                            price: "€321.99",
                            rating: "4.9",
                            onCartTap: () {},
                            onLikeTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                            isLiked: isLiked,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Jewelry",
                          style: getSemiBold600Style20(
                            fontSize: 20.sp,
                            color: ColorManager.textPrimaryBlack,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RouteName.jewelryScreenRoute,
                            );
                          },
                          child: Image.asset(IconManager.arrowRight),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.h),

                    Row(
                      children: [
                        Expanded(
                          child: ProductSellCard(
                            imagePath: ImageManager.eJewelry,
                            title: "Exclusive Jewelry",
                            sellCount: "54 sold",
                            price: "€321.99",
                            rating: "4.9",
                            onCartTap: () {},
                            onLikeTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                            isLiked: isLiked,
                          ),
                        ),
                        Expanded(
                          child: ProductSellCard(
                            imagePath: ImageManager.jewelry,
                            title: "Jewelry",
                            sellCount: "254 sold",
                            price: "€321.99",
                            rating: "4.9",
                            onCartTap: () {},
                            onLikeTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                            isLiked: isLiked,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30.h),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Popular Items",
                        style: getSemiBold600Style20(
                          fontSize: 20.sp,
                          color: ColorManager.textPrimaryBlack,
                        ),
                      ),
                    ),

                    SizedBox(height: 10.h),

                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            imagePath: ImageManager.interiorPainting,
                            title: 'Interior Painting',
                            description:
                                'Professional painting service for one standa ',
                            price: '€321.99',
                            rating: '4.9',
                            onCartTap: () {},
                            isLiked: isLiked,
                            onLikeTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: ProductCard(
                            imagePath: ImageManager.businessCard,
                            title: 'Business Card Design',
                            description:
                                'A custom, double-sided business card design.',
                            price: '€321.99',
                            rating: '4.9',
                            onCartTap: () {},
                            isLiked: isLiked,
                            onLikeTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10.h),

                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            imagePath: ImageManager.glowSerum,
                            title: 'Glow+ Vitamin C Serum',
                            description:
                                'A potent blend of 20% Vitamin C, Hyaluronic Acid',
                            price: '€321.99',
                            rating: '4.9',
                            onCartTap: () {},
                            isLiked: isLiked,
                            onLikeTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: ProductCard(
                            imagePath: ImageManager.menShoes,
                            title: 'Shoes',
                            description:
                                '"A plush, self-warming bed with a raised rim',
                            price: '€321.99',
                            rating: '4.9',
                            onCartTap: () {},
                            isLiked: isLiked,
                            onLikeTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10.h),

                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            imagePath: ImageManager.customPortrait,
                            title: 'Custom Digital Portrait',
                            description:
                                'A custom illustrated portrait based on your photo.',
                            price: '€321.99',
                            rating: '4.9',
                            onCartTap: () {},
                            isLiked: isLiked,
                            onLikeTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: ProductCard(
                            imagePath: ImageManager.leatherJacket,
                            title: 'Leather Jacket',
                            description:
                                'Made from 100% genuine full-grain lambskin leather. ',
                            price: '€321.99',
                            rating: '4.9',
                            onCartTap: () {},
                            isLiked: isLiked,
                            onLikeTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10.h),

                    Row(
                      children: [
                        Expanded(
                          child: ProductCard(
                            imagePath: ImageManager.headphone,
                            title: 'Headphone',
                            description: 'AMD Ryzen 5 3400G Processor with  ',
                            price: '€321.99',
                            rating: '4.9',
                            onCartTap: () {},
                            isLiked: isLiked,
                            onLikeTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: ProductCard(
                            imagePath: ImageManager.languageTutor,
                            title: 'Language Tutoring',
                            description:
                                'A 60-minute private lesson in Spanish, French, or',
                            price: '€321.99',
                            rating: '4.9',
                            onCartTap: () {},
                            isLiked: isLiked,
                            onLikeTap: () {
                              setState(() {
                                isLiked = !isLiked;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
