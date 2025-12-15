import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
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

final isLikedProvider = StateProvider.family<bool, int>(
  (ref, productId) => false,
);

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final isLiked1 = ref.watch(isLikedProvider(1));
    final isLiked2 = ref.watch(isLikedProvider(2));
    final isLiked3 = ref.watch(isLikedProvider(3));
    final isLiked4 = ref.watch(isLikedProvider(4));
    final isLiked5 = ref.watch(isLikedProvider(5));
    final isLiked6 = ref.watch(isLikedProvider(6));
    final isLiked7 = ref.watch(isLikedProvider(7));
    final isLiked8 = ref.watch(isLikedProvider(8));
    final isLiked9 = ref.watch(isLikedProvider(9));
    final isLiked10 = ref.watch(isLikedProvider(10));
    final isLiked11 = ref.watch(isLikedProvider(11));
    final isLiked12 = ref.watch(isLikedProvider(12));

    return Scaffold(
      body: SafeArea(
        child: ListView(
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
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            RouteName.categoryScreenRoute,
                          );
                        },
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
                            ref.read(isLikedProvider(2).notifier).state =
                                !isLiked2;
                          },
                          isLiked: isLiked2,
                        ),
                      ),

                      SizedBox(width: 10.w),
                      Expanded(
                        child: ProductSellCard(
                          imagePath: ImageManager.blueShoes,
                          title: "Blue Shoes",
                          sellCount: "54 sold",
                          price: "€321.99",
                          rating: "4.9",
                          onCartTap: () {},
                          onLikeTap: () {
                            ref.read(isLikedProvider(3).notifier).state =
                                !isLiked3;
                          },
                          isLiked: isLiked3,
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
                            ref.read(isLikedProvider(4).notifier).state =
                                !isLiked4;
                          },
                          isLiked: isLiked4,
                        ),
                      ),

                      SizedBox(width: 10.w),
                      Expanded(
                        child: ProductSellCard(
                          imagePath: ImageManager.jewelry,
                          title: "Jewelry",
                          sellCount: "254 sold",
                          price: "€321.99",
                          rating: "4.9",
                          onCartTap: () {},
                          onLikeTap: () {
                            ref.read(isLikedProvider(5).notifier).state =
                                !isLiked5;
                          },
                          isLiked: isLiked5,
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
                          isLiked: isLiked6,
                          onLikeTap: () {
                            ref.read(isLikedProvider(6).notifier).state =
                                !isLiked6;
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
                          isLiked: isLiked7,
                          onLikeTap: () {
                            ref.read(isLikedProvider(7).notifier).state =
                                !isLiked7;
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
                          isLiked: isLiked8,
                          onLikeTap: () {
                            ref.read(isLikedProvider(8).notifier).state =
                                !isLiked8;
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
                          isLiked: isLiked9,
                          onLikeTap: () {
                            ref.read(isLikedProvider(9).notifier).state =
                                !isLiked9;
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
                          isLiked: isLiked10,
                          onLikeTap: () {
                            ref.read(isLikedProvider(10).notifier).state =
                                !isLiked10;
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
                          isLiked: isLiked11,
                          onLikeTap: () {
                            ref.read(isLikedProvider(11).notifier).state =
                                !isLiked11;
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
                          isLiked: isLiked12,
                          onLikeTap: () {
                            ref.read(isLikedProvider(12).notifier).state =
                                !isLiked12;
                          },
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: ProductCard(
                          productId: 1,
                          imagePath: ImageManager.languageTutor,
                          title: 'Language Tutoring',
                          description:
                              'A 60-minute private lesson in Spanish, French, or',
                          price: '€321.99',
                          rating: '4.9',
                          onCartTap: () {},
                          isLiked: isLiked1,
                          onLikeTap: () {
                            ref.read(isLikedProvider(1).notifier).state =
                                !isLiked1;
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
    );
  }
}
